local maxLines = 250;

local httpService = game:GetService("HttpService");
local teleportService = game:GetService("TeleportService");
local textService = game:GetService("TextService");
local tweenService = game:GetService("TweenService");
local userInputService = game:GetService("UserInputService");

local localPlayer = game:GetService("Players").LocalPlayer;

local hugeVector2 = Vector2.new(math.huge, math.huge);

local rScriptsApiKey = "0";

local env = getgenv();

local _newcclosure = clonefunction(newcclosure);

local _getconnections = clonefunction(getconnections);
local _getcustomasset = clonefunction(getcustomasset or getsynasset);

local _isfile = clonefunction(isfile);
local _readfile = clonefunction(readfile);
local _writefile = clonefunction(writefile);
local _delfile = clonefunction(delfile);
local _listfiles = clonefunction(listfiles);

local _isfolder = clonefunction(isfolder);
local _makefolder = clonefunction(makefolder);

local _request = clonefunction(request);
local _base64decode = print("")

local urlEncode = clonefunction(httpService.UrlEncode);
local jsonEncode = clonefunction(httpService.JSONEncode);
local jsonDecode = clonefunction(httpService.JSONDecode);

local function removeTrace(str)
	local x = env[str];
	env[str] = nil;
	return x;
end

--[[ Console ]]--

do
	local console = script.Parent.Parent.Console;

	local scroll = console.main.container;
	local content = scroll.content;

	do
		local function getTextBounds(input)
			return textService:GetTextSize(input, content.TextSize, content.Font, hugeVector2);
		end

		content:GetPropertyChangedSignal("Text"):Connect(function()
			local input = content.Text;
			local textBounds = getTextBounds(input);
			scroll.CanvasSize = UDim2.new(0, textBounds.X, 0, math.min(textBounds.Y, maxLines * 11));
		end);
	end

	do
		local bottom = console.bottom;
		local items = bottom:GetChildren();
		for i = 1, #items do
			local v = items[i];
			if v:IsA("TextButton") then
			end
		end

		local clearConsole = bottom.clearConsole;
		local copyConsole = bottom.copyConsole;

		clearConsole.MouseButton1Click:Connect(function()
			content.Text = "";
		end);

		copyConsole.MouseButton1Click:Connect(function()
			--_setclipboard(content.Text);
		end);

	end

	do
		local typeToInfo = {
			MessageOutput = {
				colour = "#45cc57",
				prefix = "Output"
			},
			MessageInfo = {
				colour = "#2f6cd6",
				prefix = "Info"
			},
			MessageWarning = {
				colour = "#d49d37",
				prefix = "Warning"
			},
			MessageError = {
				colour = "#d44437",
				prefix = "Error"
			}
		};

		local function appendConsole(msg, msgType)
			local info = typeToInfo[msgType.Name];
			if info == nil then
				return;
			end
			content.Text ..= (content.Text == "" and "​ ​ " or "\n") .. string.format("<font color=\"%s\">[%d:%s]</font> %s", info.colour, os.time(), info.prefix, msg);
		end

		game:GetService("LogService").MessageOut:Connect(appendConsole);

		do
			local lprint, linfo, lwarn, lerror = removeTrace("logprint"), removeTrace("loginfo"), removeTrace("logwarn"), removeTrace("logerror");

			env.rconsoleprint = _newcclosure(function(msg)
				appendConsole(msg, Enum.MessageType.MessageOutput);
				lprint(msg);
			end);

			env.rconsoleinfo = _newcclosure(function(msg)
				appendConsole(msg, Enum.MessageType.MessageInfo);
				linfo(msg);
			end);

			env.rconsolewarn = _newcclosure(function(msg)
				appendConsole(msg, Enum.MessageType.MessageWarning);
				lwarn(msg);
			end);

			env.rconsoleerror = _newcclosure(function(msg)
				appendConsole(msg, Enum.MessageType.MessageError);
				lerror(msg);
			end);

			env.rconsoleclear = _newcclosure(function()
				content.Text = "";
			end);
		end
	end
end
