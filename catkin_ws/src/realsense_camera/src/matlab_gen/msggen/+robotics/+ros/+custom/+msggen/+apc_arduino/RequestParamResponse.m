classdef RequestParamResponse < robotics.ros.Message
    %RequestParamResponse MATLAB implementation of apc_arduino/RequestParamResponse
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'apc_arduino/RequestParamResponse' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '9f0e98bda65981986ddf53afa7a40e49' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        Ints
        Floats
        Strings
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Floats', 'Ints', 'Strings'} % List of non-constant message properties
        ROSPropertyList = {'floats', 'ints', 'strings'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = RequestParamResponse(msg)
            %RequestParamResponse Construct the message object RequestParamResponse
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function ints = get.Ints(obj)
            %get.Ints Get the value for property Ints
            javaArray = obj.JavaMessage.getInts;
            array = obj.readJavaArray(javaArray, 'int32');
            ints = int32(array);
        end
        
        function set.Ints(obj, ints)
            %set.Ints Set the value for property Ints
            if ~isvector(ints) && isempty(ints)
                % Allow empty [] input
                ints = int32.empty(0,1);
            end
            
            validateattributes(ints, {'numeric'}, {'vector'}, 'RequestParamResponse', 'Ints');
            
            javaArray = obj.JavaMessage.getInts;
            array = obj.writeJavaArray(ints, javaArray, 'int32');
            obj.JavaMessage.setInts(array);
        end
        
        function floats = get.Floats(obj)
            %get.Floats Get the value for property Floats
            javaArray = obj.JavaMessage.getFloats;
            array = obj.readJavaArray(javaArray, 'single');
            floats = single(array);
        end
        
        function set.Floats(obj, floats)
            %set.Floats Set the value for property Floats
            if ~isvector(floats) && isempty(floats)
                % Allow empty [] input
                floats = single.empty(0,1);
            end
            
            validateattributes(floats, {'numeric'}, {'vector'}, 'RequestParamResponse', 'Floats');
            
            javaArray = obj.JavaMessage.getFloats;
            array = obj.writeJavaArray(floats, javaArray, 'single');
            obj.JavaMessage.setFloats(array);
        end
        
        function strings = get.Strings(obj)
            %get.Strings Get the value for property Strings
            javaArray = obj.JavaMessage.getStrings;
            array = obj.readJavaArray(javaArray, 'char');
            strings = arrayfun(@(x) char(x), array, 'UniformOutput', false);
        end
        
        function set.Strings(obj, strings)
            %set.Strings Set the value for property Strings
            if ~isvector(strings) && isempty(strings)
                % Allow empty [] input
                strings = cell.empty(0,1);
            end
            
            validateattributes(strings, {'cell'}, {'vector'}, 'RequestParamResponse', 'Strings');
            if any(cellfun(@(x) ~ischar(x), strings))
                error(message('robotics:ros:message:CellArrayStringError', ...
                    'strings'));
            end
            
            javaArray = obj.JavaMessage.getStrings;
            array = obj.writeJavaArray(strings, javaArray, 'char');
            obj.JavaMessage.setStrings(array);
        end
    end
    
    methods (Access = protected)
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.Ints = obj.Ints;
            cpObj.Floats = obj.Floats;
            cpObj.Strings = obj.Strings;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Ints = strObj.Ints;
            obj.Floats = strObj.Floats;
            obj.Strings = strObj.Strings;
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.Ints = obj.Ints;
            strObj.Floats = obj.Floats;
            strObj.Strings = obj.Strings;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.apc_arduino.RequestParamResponse.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.apc_arduino.RequestParamResponse;
            obj.reload(strObj);
        end
    end
end
