classdef SuctionCupSwitchRequest < robotics.ros.Message
    %SuctionCupSwitchRequest MATLAB implementation of apc_arduino/SuctionCupSwitchRequest
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'apc_arduino/SuctionCupSwitchRequest' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '1ae2a03ee71cb8a875ef556cf120e8e5' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        CupNo
        Suction
    end
    
    properties (Constant, Hidden)
        PropertyList = {'CupNo', 'Suction'} % List of non-constant message properties
        ROSPropertyList = {'cup_no', 'suction'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = SuctionCupSwitchRequest(msg)
            %SuctionCupSwitchRequest Construct the message object SuctionCupSwitchRequest
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
        
        function cupno = get.CupNo(obj)
            %get.CupNo Get the value for property CupNo
            cupno = typecast(int8(obj.JavaMessage.getCupNo), 'uint8');
        end
        
        function set.CupNo(obj, cupno)
            %set.CupNo Set the value for property CupNo
            validateattributes(cupno, {'numeric'}, {'nonempty', 'scalar'}, 'SuctionCupSwitchRequest', 'CupNo');
            
            obj.JavaMessage.setCupNo(cupno);
        end
        
        function suction = get.Suction(obj)
            %get.Suction Get the value for property Suction
            suction = logical(obj.JavaMessage.getSuction);
        end
        
        function set.Suction(obj, suction)
            %set.Suction Set the value for property Suction
            validateattributes(suction, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'SuctionCupSwitchRequest', 'Suction');
            
            obj.JavaMessage.setSuction(suction);
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
            cpObj.CupNo = obj.CupNo;
            cpObj.Suction = obj.Suction;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.CupNo = strObj.CupNo;
            obj.Suction = strObj.Suction;
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
            
            strObj.CupNo = obj.CupNo;
            strObj.Suction = obj.Suction;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.apc_arduino.SuctionCupSwitchRequest.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.apc_arduino.SuctionCupSwitchRequest;
            obj.reload(strObj);
        end
    end
end
