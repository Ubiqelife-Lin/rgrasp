classdef RequestMessageInfoResponse < robotics.ros.Message
    %RequestMessageInfoResponse MATLAB implementation of apc_arduino/RequestMessageInfoResponse
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'apc_arduino/RequestMessageInfoResponse' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'fe452186a069bed40f09b8628fe5eac8' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        Md5
        Definition
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Definition', 'Md5'} % List of non-constant message properties
        ROSPropertyList = {'definition', 'md5'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = RequestMessageInfoResponse(msg)
            %RequestMessageInfoResponse Construct the message object RequestMessageInfoResponse
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
        
        function md5 = get.Md5(obj)
            %get.Md5 Get the value for property Md5
            md5 = char(obj.JavaMessage.getMd5);
        end
        
        function set.Md5(obj, md5)
            %set.Md5 Set the value for property Md5
            validateattributes(md5, {'char'}, {}, 'RequestMessageInfoResponse', 'Md5');
            
            obj.JavaMessage.setMd5(md5);
        end
        
        function definition = get.Definition(obj)
            %get.Definition Get the value for property Definition
            definition = char(obj.JavaMessage.getDefinition);
        end
        
        function set.Definition(obj, definition)
            %set.Definition Set the value for property Definition
            validateattributes(definition, {'char'}, {}, 'RequestMessageInfoResponse', 'Definition');
            
            obj.JavaMessage.setDefinition(definition);
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
            cpObj.Md5 = obj.Md5;
            cpObj.Definition = obj.Definition;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Md5 = strObj.Md5;
            obj.Definition = strObj.Definition;
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
            
            strObj.Md5 = obj.Md5;
            strObj.Definition = obj.Definition;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.apc_arduino.RequestMessageInfoResponse.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.apc_arduino.RequestMessageInfoResponse;
            obj.reload(strObj);
        end
    end
end