classdef app < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        nooffoilsDropDownLabel          matlab.ui.control.Label
        nooffoilsDropDown               matlab.ui.control.DropDown
        Foil1Panel                      matlab.ui.container.Panel
        MirroredCheckBox                matlab.ui.control.CheckBox
        partition1Panel                 matlab.ui.container.Panel
        RootchordEditFieldLabel         matlab.ui.control.Label
        RootchordEditField              matlab.ui.control.EditField
        BasechordairfoilEditFieldLabel  matlab.ui.control.Label
        BasechordairfoilEditField       matlab.ui.control.EditField
        noofpanelschordwiseEditFieldLabel  matlab.ui.control.Label
        noofpanelschordwiseEditField    matlab.ui.control.EditField
        dihedralEditFieldLabel          matlab.ui.control.Label
        dihedralEditField               matlab.ui.control.EditField
        pitchEditFieldLabel             matlab.ui.control.Label
        pitchEditField                  matlab.ui.control.EditField
        basechordtwistEditFieldLabel    matlab.ui.control.Label
        basechordtwistEditField         matlab.ui.control.EditField
        noofpanelssemispanwiseEditFieldLabel  matlab.ui.control.Label
        noofpanelssemispanwiseEditField  matlab.ui.control.EditField
        spanEditFieldLabel              matlab.ui.control.Label
        spanEditField                   matlab.ui.control.EditField
        taperEditFieldLabel             matlab.ui.control.Label
        taperEditField                  matlab.ui.control.EditField
        tipchordairfoilEditFieldLabel   matlab.ui.control.Label
        tipchordairfoilEditField        matlab.ui.control.EditField
        sweepEditFieldLabel             matlab.ui.control.Label
        sweepEditField                  matlab.ui.control.EditField
        outboardtwistEditFieldLabel     matlab.ui.control.Label
        outboardtwistEditField          matlab.ui.control.EditField
        meshtypeDropDownLabel           matlab.ui.control.Label
        meshtypeDropDown                matlab.ui.control.DropDown
        radiusofcurvatureEditFieldLabel  matlab.ui.control.Label
        radiusofcurvatureEditField      matlab.ui.control.EditField
        curvedDropDownLabel             matlab.ui.control.Label
        curvedDropDown                  matlab.ui.control.DropDown
        partition2Panel                 matlab.ui.container.Panel
        RootchordEditField_2Label       matlab.ui.control.Label
        RootchordEditField_2            matlab.ui.control.EditField
        BasechordairfoilEditField_2Label  matlab.ui.control.Label
        BasechordairfoilEditField_2     matlab.ui.control.EditField
        noofpanelschordwiseEditField_2Label  matlab.ui.control.Label
        noofpanelschordwiseEditField_2  matlab.ui.control.EditField
        dihedralEditField_2Label        matlab.ui.control.Label
        dihedralEditField_2             matlab.ui.control.EditField
        pitchEditField_2Label           matlab.ui.control.Label
        pitchEditField_2                matlab.ui.control.EditField
        basechordtwistEditField_2Label  matlab.ui.control.Label
        basechordtwistEditField_2       matlab.ui.control.EditField
        noofpanelssemispanwiseEditField_2Label  matlab.ui.control.Label
        noofpanelssemispanwiseEditField_2  matlab.ui.control.EditField
        spanEditField_2Label            matlab.ui.control.Label
        spanEditField_2                 matlab.ui.control.EditField
        taperEditField_2Label           matlab.ui.control.Label
        taperEditField_2                matlab.ui.control.EditField
        tipchordairfoilEditField_2Label  matlab.ui.control.Label
        tipchordairfoilEditField_2      matlab.ui.control.EditField
        sweepEditField_2Label           matlab.ui.control.Label
        sweepEditField_2                matlab.ui.control.EditField
        outboardtwistEditField_2Label   matlab.ui.control.Label
        outboardtwistEditField_2        matlab.ui.control.EditField
        meshtypeDropDown_2Label         matlab.ui.control.Label
        meshtypeDropDown_2              matlab.ui.control.DropDown
        radiusofcurvatureEditField_2Label  matlab.ui.control.Label
        radiusofcurvatureEditField_2    matlab.ui.control.EditField
        curvedDropDown_2Label           matlab.ui.control.Label
        curvedDropDown_2                matlab.ui.control.DropDown
        partition3Panel                 matlab.ui.container.Panel
        RootchordEditField_3Label       matlab.ui.control.Label
        RootchordEditField_3            matlab.ui.control.EditField
        BasechordairfoilEditField_3Label  matlab.ui.control.Label
        BasechordairfoilEditField_3     matlab.ui.control.EditField
        noofpanelschordwiseEditField_3Label  matlab.ui.control.Label
        noofpanelschordwiseEditField_3  matlab.ui.control.EditField
        dihedralEditField_3Label        matlab.ui.control.Label
        dihedralEditField_3             matlab.ui.control.EditField
        pitchEditField_3Label           matlab.ui.control.Label
        pitchEditField_3                matlab.ui.control.EditField
        basechordtwistEditField_3Label  matlab.ui.control.Label
        basechordtwistEditField_3       matlab.ui.control.EditField
        noofpanelssemispanwiseEditField_3Label  matlab.ui.control.Label
        noofpanelssemispanwiseEditField_3  matlab.ui.control.EditField
        spanEditField_3Label            matlab.ui.control.Label
        spanEditField_3                 matlab.ui.control.EditField
        taperEditField_3Label           matlab.ui.control.Label
        taperEditField_3                matlab.ui.control.EditField
        tipchordairfoilEditField_3Label  matlab.ui.control.Label
        tipchordairfoilEditField_3      matlab.ui.control.EditField
        sweepEditField_3Label           matlab.ui.control.Label
        sweepEditField_3                matlab.ui.control.EditField
        outboardtwistEditField_3Label   matlab.ui.control.Label
        outboardtwistEditField_3        matlab.ui.control.EditField
        meshtypeDropDown_3Label         matlab.ui.control.Label
        meshtypeDropDown_3              matlab.ui.control.DropDown
        radiusofcurvatureEditField_3Label  matlab.ui.control.Label
        radiusofcurvatureEditField_3    matlab.ui.control.EditField
        curvedDropDown_3Label           matlab.ui.control.Label
        curvedDropDown_3                matlab.ui.control.DropDown
        APEXxEditFieldLabel             matlab.ui.control.Label
        APEXxEditField                  matlab.ui.control.NumericEditField
        yEditField_3Label               matlab.ui.control.Label
        yEditField_3                    matlab.ui.control.NumericEditField
        zEditField_3Label               matlab.ui.control.Label
        zEditField_3                    matlab.ui.control.NumericEditField
        noofpartitionsDropDownLabel     matlab.ui.control.Label
        noofpartitionsDropDown          matlab.ui.control.DropDown
        massEditFieldLabel              matlab.ui.control.Label
        massEditField                   matlab.ui.control.EditField
        IxxEditFieldLabel               matlab.ui.control.Label
        IxxEditField                    matlab.ui.control.EditField
        IyxEditFieldLabel               matlab.ui.control.Label
        IyxEditField                    matlab.ui.control.EditField
        IzxEditFieldLabel               matlab.ui.control.Label
        IzxEditField                    matlab.ui.control.EditField
        IxyEditFieldLabel               matlab.ui.control.Label
        IxyEditField                    matlab.ui.control.EditField
        IyyEditFieldLabel               matlab.ui.control.Label
        IyyEditField                    matlab.ui.control.EditField
        IzyEditFieldLabel               matlab.ui.control.Label
        IzyEditField                    matlab.ui.control.EditField
        IxzEditFieldLabel               matlab.ui.control.Label
        IxzEditField                    matlab.ui.control.EditField
        IyzEditFieldLabel               matlab.ui.control.Label
        IyzEditField                    matlab.ui.control.EditField
        IzzEditFieldLabel               matlab.ui.control.Label
        IzzEditField                    matlab.ui.control.EditField
        COGxEditFieldLabel              matlab.ui.control.Label
        COGxEditField                   matlab.ui.control.EditField
        yEditField_4Label               matlab.ui.control.Label
        yEditField_4                    matlab.ui.control.EditField
        zEditField_4Label               matlab.ui.control.Label
        zEditField_4                    matlab.ui.control.EditField
        REFxEditFieldLabel              matlab.ui.control.Label
        REFxEditField                   matlab.ui.control.EditField
        yEditField_5Label               matlab.ui.control.Label
        yEditField_5                    matlab.ui.control.EditField
        zEditField_5Label               matlab.ui.control.Label
        zEditField_5                    matlab.ui.control.EditField
        Foil2Panel                      matlab.ui.container.Panel
        MirroredCheckBox_2              matlab.ui.control.CheckBox
        partition1Panel_2               matlab.ui.container.Panel
        RootchordEditField_4Label       matlab.ui.control.Label
        RootchordEditField_4            matlab.ui.control.EditField
        BasechordairfoilEditField_4Label  matlab.ui.control.Label
        BasechordairfoilEditField_4     matlab.ui.control.EditField
        noofpanelschordwiseEditField_4Label  matlab.ui.control.Label
        noofpanelschordwiseEditField_4  matlab.ui.control.EditField
        dihedralEditField_4Label        matlab.ui.control.Label
        dihedralEditField_4             matlab.ui.control.EditField
        pitchEditField_4Label           matlab.ui.control.Label
        pitchEditField_4                matlab.ui.control.EditField
        basechordtwistEditField_4Label  matlab.ui.control.Label
        basechordtwistEditField_4       matlab.ui.control.EditField
        noofpanelssemispanwiseEditField_4Label  matlab.ui.control.Label
        noofpanelssemispanwiseEditField_4  matlab.ui.control.EditField
        spanEditField_4Label            matlab.ui.control.Label
        spanEditField_4                 matlab.ui.control.EditField
        taperEditField_4Label           matlab.ui.control.Label
        taperEditField_4                matlab.ui.control.EditField
        tipchordairfoilEditField_4Label  matlab.ui.control.Label
        tipchordairfoilEditField_4      matlab.ui.control.EditField
        sweepEditField_4Label           matlab.ui.control.Label
        sweepEditField_4                matlab.ui.control.EditField
        outboardtwistEditField_4Label   matlab.ui.control.Label
        outboardtwistEditField_4        matlab.ui.control.EditField
        meshtypeDropDown_4Label         matlab.ui.control.Label
        meshtypeDropDown_4              matlab.ui.control.DropDown
        radiusofcurvatureEditField_4Label  matlab.ui.control.Label
        radiusofcurvatureEditField_4    matlab.ui.control.EditField
        curvedDropDown_4Label           matlab.ui.control.Label
        curvedDropDown_4                matlab.ui.control.DropDown
        partition2Panel_2               matlab.ui.container.Panel
        RootchordEditField_5Label       matlab.ui.control.Label
        RootchordEditField_5            matlab.ui.control.EditField
        BasechordairfoilEditField_5Label  matlab.ui.control.Label
        BasechordairfoilEditField_5     matlab.ui.control.EditField
        noofpanelschordwiseEditField_5Label  matlab.ui.control.Label
        noofpanelschordwiseEditField_5  matlab.ui.control.EditField
        dihedralEditField_5Label        matlab.ui.control.Label
        dihedralEditField_5             matlab.ui.control.EditField
        pitchEditField_5Label           matlab.ui.control.Label
        pitchEditField_5                matlab.ui.control.EditField
        basechordtwistEditField_5Label  matlab.ui.control.Label
        basechordtwistEditField_5       matlab.ui.control.EditField
        noofpanelssemispanwiseEditField_5Label  matlab.ui.control.Label
        noofpanelssemispanwiseEditField_5  matlab.ui.control.EditField
        spanEditField_5Label            matlab.ui.control.Label
        spanEditField_5                 matlab.ui.control.EditField
        taperEditField_5Label           matlab.ui.control.Label
        taperEditField_5                matlab.ui.control.EditField
        tipchordairfoilEditField_5Label  matlab.ui.control.Label
        tipchordairfoilEditField_5      matlab.ui.control.EditField
        sweepEditField_5Label           matlab.ui.control.Label
        sweepEditField_5                matlab.ui.control.EditField
        outboardtwistEditField_5Label   matlab.ui.control.Label
        outboardtwistEditField_5        matlab.ui.control.EditField
        meshtypeDropDown_5Label         matlab.ui.control.Label
        meshtypeDropDown_5              matlab.ui.control.DropDown
        radiusofcurvatureEditField_5Label  matlab.ui.control.Label
        radiusofcurvatureEditField_5    matlab.ui.control.EditField
        curvedDropDown_5Label           matlab.ui.control.Label
        curvedDropDown_5                matlab.ui.control.DropDown
        partition3Panel_2               matlab.ui.container.Panel
        RootchordEditField_6Label       matlab.ui.control.Label
        RootchordEditField_6            matlab.ui.control.EditField
        BasechordairfoilEditField_6Label  matlab.ui.control.Label
        BasechordairfoilEditField_6     matlab.ui.control.EditField
        noofpanelschordwiseEditField_6Label  matlab.ui.control.Label
        noofpanelschordwiseEditField_6  matlab.ui.control.EditField
        dihedralEditField_6Label        matlab.ui.control.Label
        dihedralEditField_6             matlab.ui.control.EditField
        pitchEditField_6Label           matlab.ui.control.Label
        pitchEditField_6                matlab.ui.control.EditField
        basechordtwistEditField_6Label  matlab.ui.control.Label
        basechordtwistEditField_6       matlab.ui.control.EditField
        noofpanelssemispanwiseEditField_6Label  matlab.ui.control.Label
        noofpanelssemispanwiseEditField_6  matlab.ui.control.EditField
        spanEditField_6Label            matlab.ui.control.Label
        spanEditField_6                 matlab.ui.control.EditField
        taperEditField_6Label           matlab.ui.control.Label
        taperEditField_6                matlab.ui.control.EditField
        tipchordairfoilEditField_6Label  matlab.ui.control.Label
        tipchordairfoilEditField_6      matlab.ui.control.EditField
        sweepEditField_6Label           matlab.ui.control.Label
        sweepEditField_6                matlab.ui.control.EditField
        outboardtwistEditField_6Label   matlab.ui.control.Label
        outboardtwistEditField_6        matlab.ui.control.EditField
        meshtypeDropDown_6Label         matlab.ui.control.Label
        meshtypeDropDown_6              matlab.ui.control.DropDown
        radiusofcurvatureEditField_6Label  matlab.ui.control.Label
        radiusofcurvatureEditField_6    matlab.ui.control.EditField
        curvedDropDown_6Label           matlab.ui.control.Label
        curvedDropDown_6                matlab.ui.control.DropDown
        APEXxEditField_2Label           matlab.ui.control.Label
        APEXxEditField_2                matlab.ui.control.NumericEditField
        yEditField_6Label               matlab.ui.control.Label
        yEditField_6                    matlab.ui.control.NumericEditField
        zEditField_6Label               matlab.ui.control.Label
        zEditField_6                    matlab.ui.control.NumericEditField
        noofpartitionsDropDown_2Label   matlab.ui.control.Label
        noofpartitionsDropDown_2        matlab.ui.control.DropDown
        Foil3Panel                      matlab.ui.container.Panel
        MirroredCheckBox_3              matlab.ui.control.CheckBox
        partition1Panel_3               matlab.ui.container.Panel
        RootchordEditField_7Label       matlab.ui.control.Label
        RootchordEditField_7            matlab.ui.control.EditField
        BasechordairfoilEditField_7Label  matlab.ui.control.Label
        BasechordairfoilEditField_7     matlab.ui.control.EditField
        noofpanelschordwiseEditField_7Label  matlab.ui.control.Label
        noofpanelschordwiseEditField_7  matlab.ui.control.EditField
        dihedralEditField_7Label        matlab.ui.control.Label
        dihedralEditField_7             matlab.ui.control.EditField
        pitchEditField_7Label           matlab.ui.control.Label
        pitchEditField_7                matlab.ui.control.EditField
        basechordtwistEditField_7Label  matlab.ui.control.Label
        basechordtwistEditField_7       matlab.ui.control.EditField
        noofpanelssemispanwiseEditField_7Label  matlab.ui.control.Label
        noofpanelssemispanwiseEditField_7  matlab.ui.control.EditField
        spanEditField_7Label            matlab.ui.control.Label
        spanEditField_7                 matlab.ui.control.EditField
        taperEditField_7Label           matlab.ui.control.Label
        taperEditField_7                matlab.ui.control.EditField
        tipchordairfoilEditField_7Label  matlab.ui.control.Label
        tipchordairfoilEditField_7      matlab.ui.control.EditField
        sweepEditField_7Label           matlab.ui.control.Label
        sweepEditField_7                matlab.ui.control.EditField
        outboardtwistEditField_7Label   matlab.ui.control.Label
        outboardtwistEditField_7        matlab.ui.control.EditField
        meshtypeDropDown_7Label         matlab.ui.control.Label
        meshtypeDropDown_7              matlab.ui.control.DropDown
        radiusofcurvatureEditField_7Label  matlab.ui.control.Label
        radiusofcurvatureEditField_7    matlab.ui.control.EditField
        curvedDropDown_7Label           matlab.ui.control.Label
        curvedDropDown_7                matlab.ui.control.DropDown
        partition2Panel_3               matlab.ui.container.Panel
        RootchordEditField_8Label       matlab.ui.control.Label
        RootchordEditField_8            matlab.ui.control.EditField
        BasechordairfoilEditField_8Label  matlab.ui.control.Label
        BasechordairfoilEditField_8     matlab.ui.control.EditField
        noofpanelschordwiseEditField_8Label  matlab.ui.control.Label
        noofpanelschordwiseEditField_8  matlab.ui.control.EditField
        dihedralEditField_8Label        matlab.ui.control.Label
        dihedralEditField_8             matlab.ui.control.EditField
        pitchEditField_8Label           matlab.ui.control.Label
        pitchEditField_8                matlab.ui.control.EditField
        basechordtwistEditField_8Label  matlab.ui.control.Label
        basechordtwistEditField_8       matlab.ui.control.EditField
        noofpanelssemispanwiseEditField_8Label  matlab.ui.control.Label
        noofpanelssemispanwiseEditField_8  matlab.ui.control.EditField
        spanEditField_8Label            matlab.ui.control.Label
        spanEditField_8                 matlab.ui.control.EditField
        taperEditField_8Label           matlab.ui.control.Label
        taperEditField_8                matlab.ui.control.EditField
        tipchordairfoilEditField_8Label  matlab.ui.control.Label
        tipchordairfoilEditField_8      matlab.ui.control.EditField
        sweepEditField_8Label           matlab.ui.control.Label
        sweepEditField_8                matlab.ui.control.EditField
        outboardtwistEditField_8Label   matlab.ui.control.Label
        outboardtwistEditField_8        matlab.ui.control.EditField
        meshtypeDropDown_8Label         matlab.ui.control.Label
        meshtypeDropDown_8              matlab.ui.control.DropDown
        radiusofcurvatureEditField_8Label  matlab.ui.control.Label
        radiusofcurvatureEditField_8    matlab.ui.control.EditField
        curvedDropDown_8Label           matlab.ui.control.Label
        curvedDropDown_8                matlab.ui.control.DropDown
        partition3Panel_3               matlab.ui.container.Panel
        RootchordEditField_9Label       matlab.ui.control.Label
        RootchordEditField_9            matlab.ui.control.EditField
        BasechordairfoilEditField_9Label  matlab.ui.control.Label
        BasechordairfoilEditField_9     matlab.ui.control.EditField
        noofpanelschordwiseEditField_9Label  matlab.ui.control.Label
        noofpanelschordwiseEditField_9  matlab.ui.control.EditField
        dihedralEditField_9Label        matlab.ui.control.Label
        dihedralEditField_9             matlab.ui.control.EditField
        pitchEditField_9Label           matlab.ui.control.Label
        pitchEditField_9                matlab.ui.control.EditField
        basechordtwistEditField_9Label  matlab.ui.control.Label
        basechordtwistEditField_9       matlab.ui.control.EditField
        noofpanelssemispanwiseEditField_9Label  matlab.ui.control.Label
        noofpanelssemispanwiseEditField_9  matlab.ui.control.EditField
        spanEditField_9Label            matlab.ui.control.Label
        spanEditField_9                 matlab.ui.control.EditField
        taperEditField_9Label           matlab.ui.control.Label
        taperEditField_9                matlab.ui.control.EditField
        tipchordairfoilEditField_9Label  matlab.ui.control.Label
        tipchordairfoilEditField_9      matlab.ui.control.EditField
        sweepEditField_9Label           matlab.ui.control.Label
        sweepEditField_9                matlab.ui.control.EditField
        outboardtwistEditField_9Label   matlab.ui.control.Label
        outboardtwistEditField_9        matlab.ui.control.EditField
        meshtypeDropDown_9Label         matlab.ui.control.Label
        meshtypeDropDown_9              matlab.ui.control.DropDown
        radiusofcurvatureEditField_9Label  matlab.ui.control.Label
        radiusofcurvatureEditField_9    matlab.ui.control.EditField
        curvedDropDown_9Label           matlab.ui.control.Label
        curvedDropDown_9                matlab.ui.control.DropDown
        APEXxEditField_3Label           matlab.ui.control.Label
        APEXxEditField_3                matlab.ui.control.NumericEditField
        yEditField_7Label               matlab.ui.control.Label
        yEditField_7                    matlab.ui.control.NumericEditField
        zEditField_7Label               matlab.ui.control.Label
        zEditField_7                    matlab.ui.control.NumericEditField
        noofpartitionsDropDown_3Label   matlab.ui.control.Label
        noofpartitionsDropDown_3        matlab.ui.control.DropDown
        DoneButton                      matlab.ui.control.Button
    end

    methods (Access = private)

        % Value changed function: nooffoilsDropDown
        function nooffoilsDropDownValueChanged(app, event)
            value = app.nooffoilsDropDown.Value;
            switch value
                case "1"
                    app.Foil1Panel.Visible = 'on';
                    app.Foil2Panel.Visible = 'off';
                    app.Foil3Panel.Visible = 'off';
                    geo.nwing = str2double(value);
                case "2"
                    app.Foil1Panel.Visible = 'on';
                    app.Foil2Panel.Visible = 'on';
                    app.Foil3Panel.Visible = 'off';
                    geo.nwing = str2double(value);
                case "3"
                    app.Foil1Panel.Visible = 'on';
                    app.Foil2Panel.Visible = 'on';
                    app.Foil3Panel.Visible = 'on';
                    geo.nwing = str2double(value);
            end
        end

        % Value changed function: noofpartitionsDropDown
        function noofpartitionsDropDownValueChanged(app, event)
            value = app.noofpartitionsDropDown.Value;
            switch value
                case "1"
                    app.partition1Panel.Visible = 'on';
                    app.partition2Panel.Visible = 'off';
                    app.partition3Panel.Visible = 'off';
                    geo.nelem(1)=str2double(value);
                case "2"
                    app.partition1Panel.Visible = 'on';
                    app.partition2Panel.Visible = 'on';
                    app.partition3Panel.Visible = 'off';
                    geo.nelem(1)=str2double(value);
                case "3"
                    app.partition1Panel.Visible = 'on';
                    app.partition2Panel.Visible = 'on';
                    app.partition3Panel.Visible = 'on';
                    geo.nelem(1)=str2double(value);
            end
        end

        % Value changed function: noofpartitionsDropDown_2
        function noofpartitionsDropDown_2ValueChanged(app, event)
            value = app.noofpartitionsDropDown_2.Value;
            switch value
                case "1"
                    app.partition1Panel_2.Visible = 'on';
                    app.partition2Panel_2.Visible = 'off';
                    app.partition3Panel_2.Visible = 'off';
                    geo.nelem(2)=str2double(value);
                case "2"
                    app.partition1Panel_2.Visible = 'on';
                    app.partition2Panel_2.Visible = 'on';
                    app.partition3Panel_2.Visible = 'off';
                    geo.nelem(2)=str2double(value);
                case "3"
                    app.partition1Panel_2.Visible = 'on';
                    app.partition2Panel_2.Visible = 'on';
                    app.partition3Panel_2.Visible = 'on';
                    geo.nelem(2)=str2double(value);
            end
        end

        % Value changed function: noofpartitionsDropDown_3
        function noofpartitionsDropDown_3ValueChanged(app, event)
            value = app.noofpartitionsDropDown_3.Value;
            switch value
                case "1"
                    app.partition1Panel_3.Visible = 'on';
                    app.partition2Panel_3.Visible = 'off';
                    app.partition3Panel_3.Visible = 'off';
                    geo.nelem(3)=str2double(value);
                case "2"
                    app.partition1Panel_3.Visible = 'on';
                    app.partition2Panel_3.Visible = 'on';
                    app.partition3Panel_3.Visible = 'off';
                    geo.nelem(3)=str2double(value);
                case "3"
                    app.partition1Panel_3.Visible = 'on';
                    app.partition2Panel_3.Visible = 'on';
                    app.partition3Panel_3.Visible = 'on';
                    geo.nelem(3)=str2double(value);
            end
        end

        % Value changed function: massEditField
        function massEditFieldValueChanged(app, event)
            value = app.massEditField.Value;
            geo.mass = str2double(value);
        end

        % Value changed function: IxxEditField
        function IxxEditFieldValueChanged(app, event)
            value = app.IxxEditField.Value;
            geo.I(1,1) = str2double(value);
        end

        % Value changed function: IyxEditField
        function IyxEditFieldValueChanged(app, event)
            value = app.IyxEditField.Value;
            geo.I(2,1) = str2double(value);
        end

        % Value changed function: IzxEditField
        function IzxEditFieldValueChanged(app, event)
            value = app.IzxEditField.Value;
            geo.I(3,1) = str2double(value);
        end

        % Value changed function: IxyEditField
        function IxyEditFieldValueChanged(app, event)
            value = app.IxyEditField.Value;
            geo.I(1,2) = str2double(value);
        end

        % Value changed function: IyyEditField
        function IyyEditFieldValueChanged(app, event)
            value = app.IyyEditField.Value;
            geo.I(2,2) = str2double(value);
        end

        % Value changed function: IzyEditField
        function IzyEditFieldValueChanged(app, event)
            value = app.IzyEditField.Value;
            geo.I(3,2) = str2double(value);
        end

        % Value changed function: IxzEditField
        function IxzEditFieldValueChanged(app, event)
            value = app.IxzEditField.Value;
            geo.I(1,3) = str2double(value);
        end

        % Value changed function: IyzEditField
        function IyzEditFieldValueChanged(app, event)
            value = app.IyzEditField.Value;
            geo.I(2,3) = str2double(value);
        end

        % Value changed function: IzzEditField
        function IzzEditFieldValueChanged(app, event)
            value = app.IzzEditField.Value;
            geo.I(3,3) = str2double(value);
        end

        % Value changed function: COGxEditField
        function COGxEditFieldValueChanged(app, event)
            value = app.COGxEditField.Value;
            geo.CG(1) = str2double(value);
        end

        % Value changed function: yEditField_4
        function yEditField_4ValueChanged(app, event)
            value = app.yEditField_4.Value;
            geo.CG(2) = str2double(value);
        end

        % Value changed function: zEditField_4
        function zEditField_4ValueChanged(app, event)
            value = app.zEditField_4.Value;
            geo.CG(3) = str2double(value);
        end

        % Value changed function: REFxEditField
        function REFxEditFieldValueChanged(app, event)
            value = app.REFxEditField.Value;
            geo.ref_point(1) = str2double(value);
        end

        % Value changed function: yEditField_5
        function yEditField_5ValueChanged(app, event)
            value = app.yEditField_5.Value;
            geo.ref_point(2) = str2double(value);
        end

        % Value changed function: zEditField_5
        function zEditField_5ValueChanged(app, event)
            value = app.zEditField_5.Value;
            geo.ref_point(3) = str2double(value);
        end

        % Value changed function: MirroredCheckBox
        function MirroredCheckBoxValueChanged(app, event)
            value = app.MirroredCheckBox.Value;
            geo.symetric(1) = value;
        end

        % Value changed function: APEXxEditField
        function APEXxEditFieldValueChanged(app, event)
            value = app.APEXxEditField.Value;
            geo.startx = str2double(value);
        end

        % Value changed function: yEditField_3
        function yEditField_3ValueChanged(app, event)
            value = app.yEditField_3.Value;
            geo.starty = str2double(value);
        end

        % Value changed function: zEditField_3
        function zEditField_3ValueChanged(app, event)
            value = app.zEditField_3.Value;
            geo.startz = str2double(value);
        end

        % Value changed function: RootchordEditField
        function RootchordEditFieldValueChanged(app, event)
            value = app.RootchordEditField.Value;
            geo.c(1) = str2double(value);
        end

        % Value changed function: BasechordairfoilEditField
        function BasechordairfoilEditFieldValueChanged(app, event)
            value = app.BasechordairfoilEditField.Value;
            geo.foil(1,1,1) = value;
        end

        % Value changed function: noofpanelschordwiseEditField
        function noofpanelschordwiseEditFieldValueChanged(app, event)
            value = app.noofpanelschordwiseEditField.Value;
            geo.nx(1,1) = str2double(value);
        end

        % Value changed function: dihedralEditField
        function dihedralEditFieldValueChanged(app, event)
            value = app.dihedralEditField.Value;
            geo.dihed(1,1) = str2double(value)*pi/180;
        end

        % Value changed function: pitchEditField
        function pitchEditFieldValueChanged(app, event)
            value = app.pitchEditField.Value;
            geo.foiltheta(1,1) = str2double(value)*pi/180;
        end

        % Value changed function: basechordtwistEditField
        function basechordtwistEditFieldValueChanged(app, event)
            value = app.basechordtwistEditField.Value;
            geo.BTW(1) = str2double(value)*pi/180;
        end

        % Value changed function: noofpanelssemispanwiseEditField
        function noofpanelssemispanwiseEditFieldValueChanged(app, event)
            value = app.noofpanelssemispanwiseEditField.Value;
            geo.ny(1,1) = str2double(value);
        end

        % Value changed function: spanEditField
        function spanEditFieldValueChanged(app, event)
            value = app.spanEditField.Value;
            geo.b(1,1) = str2double(value);
        end

        % Value changed function: taperEditField
        function taperEditFieldValueChanged(app, event)
            value = app.taperEditField.Value;
            geo.T(1,1) = str2double(value);
        end

        % Value changed function: tipchordairfoilEditField
        function tipchordairfoilEditFieldValueChanged(app, event)
            value = app.tipchordairfoilEditField.Value;
            geo.foil(1,1,2) = value;
        end

        % Value changed function: sweepEditField
        function sweepEditFieldValueChanged(app, event)
            value = app.sweepEditField.Value;
            geo.TW(1,1,2) = str2double(value)*pi/180;
        end

        % Value changed function: outboardtwistEditField
        function outboardtwistEditFieldValueChanged(app, event)
            value = app.outboardtwistEditField.Value;
            geo.TW(1,1,2) = str2double(value)*pi/180;
        end

        % Value changed function: meshtypeDropDown
        function meshtypeDropDownValueChanged(app, event)
            value = app.meshtypeDropDown.Value;
            geo.meshtype(1,1) = str2double(value);
        end

        % Value changed function: curvedDropDown
        function curvedDropDownValueChanged(app, event)
            value = app.curvedDropDown.Value;
            switch value
                case 'yes'
                    geo.curved(1,1) = 1;
                    app.radiusofcurvatureEditField.Visible = 'on';
                case 'no'
                    geo.curved(1,1) = 0;
                    app.radiusofcurvatureEditField.Visible = 'off';
            end
        end
    end

    % App initialization and construction
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure
            app.UIFigure = uifigure;
            app.UIFigure.Position = [100 100 1244 740];
            app.UIFigure.Name = 'UI Figure';
            app.UIFigure.Scrollable = 'on';

            % Create nooffoilsDropDownLabel
            app.nooffoilsDropDownLabel = uilabel(app.UIFigure);
            app.nooffoilsDropDownLabel.HorizontalAlignment = 'right';
            app.nooffoilsDropDownLabel.Position = [44 554 60 22];
            app.nooffoilsDropDownLabel.Text = 'no. of foils';

            % Create nooffoilsDropDown
            app.nooffoilsDropDown = uidropdown(app.UIFigure);
            app.nooffoilsDropDown.Items = {'1', '2', '3'};
            app.nooffoilsDropDown.ValueChangedFcn = createCallbackFcn(app, @nooffoilsDropDownValueChanged, true);
            app.nooffoilsDropDown.Position = [119 554 100 22];
            app.nooffoilsDropDown.Value = '1';

            % Create Foil1Panel
            app.Foil1Panel = uipanel(app.UIFigure);
            app.Foil1Panel.Title = 'Foil 1';
            app.Foil1Panel.Scrollable = 'on';
            app.Foil1Panel.Position = [14 11 380 440];

            % Create MirroredCheckBox
            app.MirroredCheckBox = uicheckbox(app.Foil1Panel);
            app.MirroredCheckBox.ValueChangedFcn = createCallbackFcn(app, @MirroredCheckBoxValueChanged, true);
            app.MirroredCheckBox.Text = 'Mirrored';
            app.MirroredCheckBox.Position = [56 1580 67 22];

            % Create partition1Panel
            app.partition1Panel = uipanel(app.Foil1Panel);
            app.partition1Panel.Title = 'partition 1';
            app.partition1Panel.Position = [54 1012 311 492];

            % Create RootchordEditFieldLabel
            app.RootchordEditFieldLabel = uilabel(app.partition1Panel);
            app.RootchordEditFieldLabel.HorizontalAlignment = 'right';
            app.RootchordEditFieldLabel.Position = [45 438 64 22];
            app.RootchordEditFieldLabel.Text = 'Root chord';

            % Create RootchordEditField
            app.RootchordEditField = uieditfield(app.partition1Panel, 'text');
            app.RootchordEditField.ValueChangedFcn = createCallbackFcn(app, @RootchordEditFieldValueChanged, true);
            app.RootchordEditField.HorizontalAlignment = 'right';
            app.RootchordEditField.Position = [124 438 100 22];

            % Create BasechordairfoilEditFieldLabel
            app.BasechordairfoilEditFieldLabel = uilabel(app.partition1Panel);
            app.BasechordairfoilEditFieldLabel.HorizontalAlignment = 'right';
            app.BasechordairfoilEditFieldLabel.Position = [11 401 98 22];
            app.BasechordairfoilEditFieldLabel.Text = 'Base chord airfoil';

            % Create BasechordairfoilEditField
            app.BasechordairfoilEditField = uieditfield(app.partition1Panel, 'text');
            app.BasechordairfoilEditField.ValueChangedFcn = createCallbackFcn(app, @BasechordairfoilEditFieldValueChanged, true);
            app.BasechordairfoilEditField.HorizontalAlignment = 'right';
            app.BasechordairfoilEditField.Position = [123 401 100 22];

            % Create noofpanelschordwiseEditFieldLabel
            app.noofpanelschordwiseEditFieldLabel = uilabel(app.partition1Panel);
            app.noofpanelschordwiseEditFieldLabel.HorizontalAlignment = 'right';
            app.noofpanelschordwiseEditFieldLabel.Position = [28 369 135 22];
            app.noofpanelschordwiseEditFieldLabel.Text = 'no. of panels chord wise';

            % Create noofpanelschordwiseEditField
            app.noofpanelschordwiseEditField = uieditfield(app.partition1Panel, 'text');
            app.noofpanelschordwiseEditField.ValueChangedFcn = createCallbackFcn(app, @noofpanelschordwiseEditFieldValueChanged, true);
            app.noofpanelschordwiseEditField.Position = [179 369 45 22];

            % Create dihedralEditFieldLabel
            app.dihedralEditFieldLabel = uilabel(app.partition1Panel);
            app.dihedralEditFieldLabel.HorizontalAlignment = 'right';
            app.dihedralEditFieldLabel.Position = [115 339 48 22];
            app.dihedralEditFieldLabel.Text = 'dihedral';

            % Create dihedralEditField
            app.dihedralEditField = uieditfield(app.partition1Panel, 'text');
            app.dihedralEditField.ValueChangedFcn = createCallbackFcn(app, @dihedralEditFieldValueChanged, true);
            app.dihedralEditField.Position = [179 339 45 22];

            % Create pitchEditFieldLabel
            app.pitchEditFieldLabel = uilabel(app.partition1Panel);
            app.pitchEditFieldLabel.HorizontalAlignment = 'right';
            app.pitchEditFieldLabel.Position = [132 309 31 22];
            app.pitchEditFieldLabel.Text = 'pitch';

            % Create pitchEditField
            app.pitchEditField = uieditfield(app.partition1Panel, 'text');
            app.pitchEditField.ValueChangedFcn = createCallbackFcn(app, @pitchEditFieldValueChanged, true);
            app.pitchEditField.Position = [179 309 45 22];

            % Create basechordtwistEditFieldLabel
            app.basechordtwistEditFieldLabel = uilabel(app.partition1Panel);
            app.basechordtwistEditFieldLabel.HorizontalAlignment = 'right';
            app.basechordtwistEditFieldLabel.Position = [71 280 92 22];
            app.basechordtwistEditFieldLabel.Text = 'base chord twist';

            % Create basechordtwistEditField
            app.basechordtwistEditField = uieditfield(app.partition1Panel, 'text');
            app.basechordtwistEditField.ValueChangedFcn = createCallbackFcn(app, @basechordtwistEditFieldValueChanged, true);
            app.basechordtwistEditField.Position = [179 280 45 22];

            % Create noofpanelssemispanwiseEditFieldLabel
            app.noofpanelssemispanwiseEditFieldLabel = uilabel(app.partition1Panel);
            app.noofpanelssemispanwiseEditFieldLabel.HorizontalAlignment = 'right';
            app.noofpanelssemispanwiseEditFieldLabel.Position = [5 250 160 22];
            app.noofpanelssemispanwiseEditFieldLabel.Text = 'no. of panels semi-span wise';

            % Create noofpanelssemispanwiseEditField
            app.noofpanelssemispanwiseEditField = uieditfield(app.partition1Panel, 'text');
            app.noofpanelssemispanwiseEditField.ValueChangedFcn = createCallbackFcn(app, @noofpanelssemispanwiseEditFieldValueChanged, true);
            app.noofpanelssemispanwiseEditField.Position = [179 250 45 22];

            % Create spanEditFieldLabel
            app.spanEditFieldLabel = uilabel(app.partition1Panel);
            app.spanEditFieldLabel.HorizontalAlignment = 'right';
            app.spanEditFieldLabel.Position = [131 221 32 22];
            app.spanEditFieldLabel.Text = 'span';

            % Create spanEditField
            app.spanEditField = uieditfield(app.partition1Panel, 'text');
            app.spanEditField.ValueChangedFcn = createCallbackFcn(app, @spanEditFieldValueChanged, true);
            app.spanEditField.Position = [179 221 45 22];

            % Create taperEditFieldLabel
            app.taperEditFieldLabel = uilabel(app.partition1Panel);
            app.taperEditFieldLabel.HorizontalAlignment = 'right';
            app.taperEditFieldLabel.Position = [130 191 33 22];
            app.taperEditFieldLabel.Text = 'taper';

            % Create taperEditField
            app.taperEditField = uieditfield(app.partition1Panel, 'text');
            app.taperEditField.ValueChangedFcn = createCallbackFcn(app, @taperEditFieldValueChanged, true);
            app.taperEditField.Position = [179 191 45 22];

            % Create tipchordairfoilEditFieldLabel
            app.tipchordairfoilEditFieldLabel = uilabel(app.partition1Panel);
            app.tipchordairfoilEditFieldLabel.HorizontalAlignment = 'right';
            app.tipchordairfoilEditFieldLabel.Position = [79 160 84 22];
            app.tipchordairfoilEditFieldLabel.Text = 'tip chord airfoil';

            % Create tipchordairfoilEditField
            app.tipchordairfoilEditField = uieditfield(app.partition1Panel, 'text');
            app.tipchordairfoilEditField.ValueChangedFcn = createCallbackFcn(app, @tipchordairfoilEditFieldValueChanged, true);
            app.tipchordairfoilEditField.Position = [179 160 45 22];

            % Create sweepEditFieldLabel
            app.sweepEditFieldLabel = uilabel(app.partition1Panel);
            app.sweepEditFieldLabel.HorizontalAlignment = 'right';
            app.sweepEditFieldLabel.Position = [123 128 40 22];
            app.sweepEditFieldLabel.Text = 'sweep';

            % Create sweepEditField
            app.sweepEditField = uieditfield(app.partition1Panel, 'text');
            app.sweepEditField.ValueChangedFcn = createCallbackFcn(app, @sweepEditFieldValueChanged, true);
            app.sweepEditField.Position = [179 128 45 22];

            % Create outboardtwistEditFieldLabel
            app.outboardtwistEditFieldLabel = uilabel(app.partition1Panel);
            app.outboardtwistEditFieldLabel.HorizontalAlignment = 'right';
            app.outboardtwistEditFieldLabel.Position = [83 96 80 22];
            app.outboardtwistEditFieldLabel.Text = 'outboard twist';

            % Create outboardtwistEditField
            app.outboardtwistEditField = uieditfield(app.partition1Panel, 'text');
            app.outboardtwistEditField.ValueChangedFcn = createCallbackFcn(app, @outboardtwistEditFieldValueChanged, true);
            app.outboardtwistEditField.Position = [179 96 45 22];

            % Create meshtypeDropDownLabel
            app.meshtypeDropDownLabel = uilabel(app.partition1Panel);
            app.meshtypeDropDownLabel.HorizontalAlignment = 'right';
            app.meshtypeDropDownLabel.Position = [102 66 61 22];
            app.meshtypeDropDownLabel.Text = 'mesh type';

            % Create meshtypeDropDown
            app.meshtypeDropDown = uidropdown(app.partition1Panel);
            app.meshtypeDropDown.Items = {'linear', 'span-wise half cosine', 'spanwise half-cosine, chordwise', 'spanwise cosine', 'chordwise cosine'};
            app.meshtypeDropDown.ValueChangedFcn = createCallbackFcn(app, @meshtypeDropDownValueChanged, true);
            app.meshtypeDropDown.Position = [180 66 100 22];
            app.meshtypeDropDown.Value = 'linear';

            % Create radiusofcurvatureEditFieldLabel
            app.radiusofcurvatureEditFieldLabel = uilabel(app.partition1Panel);
            app.radiusofcurvatureEditFieldLabel.HorizontalAlignment = 'right';
            app.radiusofcurvatureEditFieldLabel.Position = [58 6 105 22];
            app.radiusofcurvatureEditFieldLabel.Text = 'radius of curvature';

            % Create radiusofcurvatureEditField
            app.radiusofcurvatureEditField = uieditfield(app.partition1Panel, 'text');
            app.radiusofcurvatureEditField.Visible = 'off';
            app.radiusofcurvatureEditField.Position = [179 6 45 22];

            % Create curvedDropDownLabel
            app.curvedDropDownLabel = uilabel(app.partition1Panel);
            app.curvedDropDownLabel.HorizontalAlignment = 'right';
            app.curvedDropDownLabel.Position = [123 37 42 22];
            app.curvedDropDownLabel.Text = 'curved';

            % Create curvedDropDown
            app.curvedDropDown = uidropdown(app.partition1Panel);
            app.curvedDropDown.Items = {'no', 'yes'};
            app.curvedDropDown.ValueChangedFcn = createCallbackFcn(app, @curvedDropDownValueChanged, true);
            app.curvedDropDown.Position = [180 37 100 22];
            app.curvedDropDown.Value = 'no';

            % Create partition2Panel
            app.partition2Panel = uipanel(app.Foil1Panel);
            app.partition2Panel.Title = 'partition 2';
            app.partition2Panel.Visible = 'off';
            app.partition2Panel.Position = [54 512 311 492];

            % Create RootchordEditField_2Label
            app.RootchordEditField_2Label = uilabel(app.partition2Panel);
            app.RootchordEditField_2Label.HorizontalAlignment = 'right';
            app.RootchordEditField_2Label.Position = [45 438 64 22];
            app.RootchordEditField_2Label.Text = 'Root chord';

            % Create RootchordEditField_2
            app.RootchordEditField_2 = uieditfield(app.partition2Panel, 'text');
            app.RootchordEditField_2.HorizontalAlignment = 'right';
            app.RootchordEditField_2.Position = [124 438 100 22];

            % Create BasechordairfoilEditField_2Label
            app.BasechordairfoilEditField_2Label = uilabel(app.partition2Panel);
            app.BasechordairfoilEditField_2Label.HorizontalAlignment = 'right';
            app.BasechordairfoilEditField_2Label.Position = [11 401 98 22];
            app.BasechordairfoilEditField_2Label.Text = 'Base chord airfoil';

            % Create BasechordairfoilEditField_2
            app.BasechordairfoilEditField_2 = uieditfield(app.partition2Panel, 'text');
            app.BasechordairfoilEditField_2.HorizontalAlignment = 'right';
            app.BasechordairfoilEditField_2.Position = [123 401 100 22];

            % Create noofpanelschordwiseEditField_2Label
            app.noofpanelschordwiseEditField_2Label = uilabel(app.partition2Panel);
            app.noofpanelschordwiseEditField_2Label.HorizontalAlignment = 'right';
            app.noofpanelschordwiseEditField_2Label.Position = [28 369 135 22];
            app.noofpanelschordwiseEditField_2Label.Text = 'no. of panels chord wise';

            % Create noofpanelschordwiseEditField_2
            app.noofpanelschordwiseEditField_2 = uieditfield(app.partition2Panel, 'text');
            app.noofpanelschordwiseEditField_2.Position = [179 369 45 22];

            % Create dihedralEditField_2Label
            app.dihedralEditField_2Label = uilabel(app.partition2Panel);
            app.dihedralEditField_2Label.HorizontalAlignment = 'right';
            app.dihedralEditField_2Label.Position = [115 339 48 22];
            app.dihedralEditField_2Label.Text = 'dihedral';

            % Create dihedralEditField_2
            app.dihedralEditField_2 = uieditfield(app.partition2Panel, 'text');
            app.dihedralEditField_2.Position = [179 339 45 22];

            % Create pitchEditField_2Label
            app.pitchEditField_2Label = uilabel(app.partition2Panel);
            app.pitchEditField_2Label.HorizontalAlignment = 'right';
            app.pitchEditField_2Label.Position = [132 309 31 22];
            app.pitchEditField_2Label.Text = 'pitch';

            % Create pitchEditField_2
            app.pitchEditField_2 = uieditfield(app.partition2Panel, 'text');
            app.pitchEditField_2.Position = [179 309 45 22];

            % Create basechordtwistEditField_2Label
            app.basechordtwistEditField_2Label = uilabel(app.partition2Panel);
            app.basechordtwistEditField_2Label.HorizontalAlignment = 'right';
            app.basechordtwistEditField_2Label.Position = [71 280 92 22];
            app.basechordtwistEditField_2Label.Text = 'base chord twist';

            % Create basechordtwistEditField_2
            app.basechordtwistEditField_2 = uieditfield(app.partition2Panel, 'text');
            app.basechordtwistEditField_2.Position = [179 280 45 22];

            % Create noofpanelssemispanwiseEditField_2Label
            app.noofpanelssemispanwiseEditField_2Label = uilabel(app.partition2Panel);
            app.noofpanelssemispanwiseEditField_2Label.HorizontalAlignment = 'right';
            app.noofpanelssemispanwiseEditField_2Label.Position = [5 250 160 22];
            app.noofpanelssemispanwiseEditField_2Label.Text = 'no. of panels semi-span wise';

            % Create noofpanelssemispanwiseEditField_2
            app.noofpanelssemispanwiseEditField_2 = uieditfield(app.partition2Panel, 'text');
            app.noofpanelssemispanwiseEditField_2.Position = [179 250 45 22];

            % Create spanEditField_2Label
            app.spanEditField_2Label = uilabel(app.partition2Panel);
            app.spanEditField_2Label.HorizontalAlignment = 'right';
            app.spanEditField_2Label.Position = [131 221 32 22];
            app.spanEditField_2Label.Text = 'span';

            % Create spanEditField_2
            app.spanEditField_2 = uieditfield(app.partition2Panel, 'text');
            app.spanEditField_2.Position = [179 221 45 22];

            % Create taperEditField_2Label
            app.taperEditField_2Label = uilabel(app.partition2Panel);
            app.taperEditField_2Label.HorizontalAlignment = 'right';
            app.taperEditField_2Label.Position = [130 191 33 22];
            app.taperEditField_2Label.Text = 'taper';

            % Create taperEditField_2
            app.taperEditField_2 = uieditfield(app.partition2Panel, 'text');
            app.taperEditField_2.Position = [179 191 45 22];

            % Create tipchordairfoilEditField_2Label
            app.tipchordairfoilEditField_2Label = uilabel(app.partition2Panel);
            app.tipchordairfoilEditField_2Label.HorizontalAlignment = 'right';
            app.tipchordairfoilEditField_2Label.Position = [79 160 84 22];
            app.tipchordairfoilEditField_2Label.Text = 'tip chord airfoil';

            % Create tipchordairfoilEditField_2
            app.tipchordairfoilEditField_2 = uieditfield(app.partition2Panel, 'text');
            app.tipchordairfoilEditField_2.Position = [179 160 45 22];

            % Create sweepEditField_2Label
            app.sweepEditField_2Label = uilabel(app.partition2Panel);
            app.sweepEditField_2Label.HorizontalAlignment = 'right';
            app.sweepEditField_2Label.Position = [123 128 40 22];
            app.sweepEditField_2Label.Text = 'sweep';

            % Create sweepEditField_2
            app.sweepEditField_2 = uieditfield(app.partition2Panel, 'text');
            app.sweepEditField_2.Position = [179 128 45 22];

            % Create outboardtwistEditField_2Label
            app.outboardtwistEditField_2Label = uilabel(app.partition2Panel);
            app.outboardtwistEditField_2Label.HorizontalAlignment = 'right';
            app.outboardtwistEditField_2Label.Position = [83 96 80 22];
            app.outboardtwistEditField_2Label.Text = 'outboard twist';

            % Create outboardtwistEditField_2
            app.outboardtwistEditField_2 = uieditfield(app.partition2Panel, 'text');
            app.outboardtwistEditField_2.Position = [179 96 45 22];

            % Create meshtypeDropDown_2Label
            app.meshtypeDropDown_2Label = uilabel(app.partition2Panel);
            app.meshtypeDropDown_2Label.HorizontalAlignment = 'right';
            app.meshtypeDropDown_2Label.Position = [102 66 61 22];
            app.meshtypeDropDown_2Label.Text = 'mesh type';

            % Create meshtypeDropDown_2
            app.meshtypeDropDown_2 = uidropdown(app.partition2Panel);
            app.meshtypeDropDown_2.Items = {'linear', 'span-wise half cosine', 'spanwise half-cosine, chordwise', 'spanwise cosine', 'chordwise cosine'};
            app.meshtypeDropDown_2.Position = [180 66 100 22];
            app.meshtypeDropDown_2.Value = 'linear';

            % Create radiusofcurvatureEditField_2Label
            app.radiusofcurvatureEditField_2Label = uilabel(app.partition2Panel);
            app.radiusofcurvatureEditField_2Label.HorizontalAlignment = 'right';
            app.radiusofcurvatureEditField_2Label.Position = [58 6 105 22];
            app.radiusofcurvatureEditField_2Label.Text = 'radius of curvature';

            % Create radiusofcurvatureEditField_2
            app.radiusofcurvatureEditField_2 = uieditfield(app.partition2Panel, 'text');
            app.radiusofcurvatureEditField_2.Position = [179 6 45 22];

            % Create curvedDropDown_2Label
            app.curvedDropDown_2Label = uilabel(app.partition2Panel);
            app.curvedDropDown_2Label.HorizontalAlignment = 'right';
            app.curvedDropDown_2Label.Position = [123 37 42 22];
            app.curvedDropDown_2Label.Text = 'curved';

            % Create curvedDropDown_2
            app.curvedDropDown_2 = uidropdown(app.partition2Panel);
            app.curvedDropDown_2.Items = {'no', 'yes'};
            app.curvedDropDown_2.Position = [180 37 100 22];
            app.curvedDropDown_2.Value = 'no';

            % Create partition3Panel
            app.partition3Panel = uipanel(app.Foil1Panel);
            app.partition3Panel.Title = 'partition 3';
            app.partition3Panel.Visible = 'off';
            app.partition3Panel.Position = [54 10 311 492];

            % Create RootchordEditField_3Label
            app.RootchordEditField_3Label = uilabel(app.partition3Panel);
            app.RootchordEditField_3Label.HorizontalAlignment = 'right';
            app.RootchordEditField_3Label.Position = [45 438 64 22];
            app.RootchordEditField_3Label.Text = 'Root chord';

            % Create RootchordEditField_3
            app.RootchordEditField_3 = uieditfield(app.partition3Panel, 'text');
            app.RootchordEditField_3.HorizontalAlignment = 'right';
            app.RootchordEditField_3.Position = [124 438 100 22];

            % Create BasechordairfoilEditField_3Label
            app.BasechordairfoilEditField_3Label = uilabel(app.partition3Panel);
            app.BasechordairfoilEditField_3Label.HorizontalAlignment = 'right';
            app.BasechordairfoilEditField_3Label.Position = [11 401 98 22];
            app.BasechordairfoilEditField_3Label.Text = 'Base chord airfoil';

            % Create BasechordairfoilEditField_3
            app.BasechordairfoilEditField_3 = uieditfield(app.partition3Panel, 'text');
            app.BasechordairfoilEditField_3.HorizontalAlignment = 'right';
            app.BasechordairfoilEditField_3.Position = [123 401 100 22];

            % Create noofpanelschordwiseEditField_3Label
            app.noofpanelschordwiseEditField_3Label = uilabel(app.partition3Panel);
            app.noofpanelschordwiseEditField_3Label.HorizontalAlignment = 'right';
            app.noofpanelschordwiseEditField_3Label.Position = [28 369 135 22];
            app.noofpanelschordwiseEditField_3Label.Text = 'no. of panels chord wise';

            % Create noofpanelschordwiseEditField_3
            app.noofpanelschordwiseEditField_3 = uieditfield(app.partition3Panel, 'text');
            app.noofpanelschordwiseEditField_3.Position = [179 369 45 22];

            % Create dihedralEditField_3Label
            app.dihedralEditField_3Label = uilabel(app.partition3Panel);
            app.dihedralEditField_3Label.HorizontalAlignment = 'right';
            app.dihedralEditField_3Label.Position = [115 339 48 22];
            app.dihedralEditField_3Label.Text = 'dihedral';

            % Create dihedralEditField_3
            app.dihedralEditField_3 = uieditfield(app.partition3Panel, 'text');
            app.dihedralEditField_3.Position = [179 339 45 22];

            % Create pitchEditField_3Label
            app.pitchEditField_3Label = uilabel(app.partition3Panel);
            app.pitchEditField_3Label.HorizontalAlignment = 'right';
            app.pitchEditField_3Label.Position = [132 309 31 22];
            app.pitchEditField_3Label.Text = 'pitch';

            % Create pitchEditField_3
            app.pitchEditField_3 = uieditfield(app.partition3Panel, 'text');
            app.pitchEditField_3.Position = [179 309 45 22];

            % Create basechordtwistEditField_3Label
            app.basechordtwistEditField_3Label = uilabel(app.partition3Panel);
            app.basechordtwistEditField_3Label.HorizontalAlignment = 'right';
            app.basechordtwistEditField_3Label.Position = [71 280 92 22];
            app.basechordtwistEditField_3Label.Text = 'base chord twist';

            % Create basechordtwistEditField_3
            app.basechordtwistEditField_3 = uieditfield(app.partition3Panel, 'text');
            app.basechordtwistEditField_3.Position = [179 280 45 22];

            % Create noofpanelssemispanwiseEditField_3Label
            app.noofpanelssemispanwiseEditField_3Label = uilabel(app.partition3Panel);
            app.noofpanelssemispanwiseEditField_3Label.HorizontalAlignment = 'right';
            app.noofpanelssemispanwiseEditField_3Label.Position = [3 250 160 22];
            app.noofpanelssemispanwiseEditField_3Label.Text = 'no. of panels semi-span wise';

            % Create noofpanelssemispanwiseEditField_3
            app.noofpanelssemispanwiseEditField_3 = uieditfield(app.partition3Panel, 'text');
            app.noofpanelssemispanwiseEditField_3.Position = [179 250 45 22];

            % Create spanEditField_3Label
            app.spanEditField_3Label = uilabel(app.partition3Panel);
            app.spanEditField_3Label.HorizontalAlignment = 'right';
            app.spanEditField_3Label.Position = [131 221 32 22];
            app.spanEditField_3Label.Text = 'span';

            % Create spanEditField_3
            app.spanEditField_3 = uieditfield(app.partition3Panel, 'text');
            app.spanEditField_3.Position = [179 221 45 22];

            % Create taperEditField_3Label
            app.taperEditField_3Label = uilabel(app.partition3Panel);
            app.taperEditField_3Label.HorizontalAlignment = 'right';
            app.taperEditField_3Label.Position = [130 191 33 22];
            app.taperEditField_3Label.Text = 'taper';

            % Create taperEditField_3
            app.taperEditField_3 = uieditfield(app.partition3Panel, 'text');
            app.taperEditField_3.Position = [179 191 45 22];

            % Create tipchordairfoilEditField_3Label
            app.tipchordairfoilEditField_3Label = uilabel(app.partition3Panel);
            app.tipchordairfoilEditField_3Label.HorizontalAlignment = 'right';
            app.tipchordairfoilEditField_3Label.Position = [79 160 84 22];
            app.tipchordairfoilEditField_3Label.Text = 'tip chord airfoil';

            % Create tipchordairfoilEditField_3
            app.tipchordairfoilEditField_3 = uieditfield(app.partition3Panel, 'text');
            app.tipchordairfoilEditField_3.Position = [179 160 45 22];

            % Create sweepEditField_3Label
            app.sweepEditField_3Label = uilabel(app.partition3Panel);
            app.sweepEditField_3Label.HorizontalAlignment = 'right';
            app.sweepEditField_3Label.Position = [123 128 40 22];
            app.sweepEditField_3Label.Text = 'sweep';

            % Create sweepEditField_3
            app.sweepEditField_3 = uieditfield(app.partition3Panel, 'text');
            app.sweepEditField_3.Position = [179 128 45 22];

            % Create outboardtwistEditField_3Label
            app.outboardtwistEditField_3Label = uilabel(app.partition3Panel);
            app.outboardtwistEditField_3Label.HorizontalAlignment = 'right';
            app.outboardtwistEditField_3Label.Position = [83 96 80 22];
            app.outboardtwistEditField_3Label.Text = 'outboard twist';

            % Create outboardtwistEditField_3
            app.outboardtwistEditField_3 = uieditfield(app.partition3Panel, 'text');
            app.outboardtwistEditField_3.Position = [179 96 45 22];

            % Create meshtypeDropDown_3Label
            app.meshtypeDropDown_3Label = uilabel(app.partition3Panel);
            app.meshtypeDropDown_3Label.HorizontalAlignment = 'right';
            app.meshtypeDropDown_3Label.Position = [102 66 61 22];
            app.meshtypeDropDown_3Label.Text = 'mesh type';

            % Create meshtypeDropDown_3
            app.meshtypeDropDown_3 = uidropdown(app.partition3Panel);
            app.meshtypeDropDown_3.Items = {'linear', 'span-wise half cosine', 'spanwise half-cosine, chordwise', 'spanwise cosine', 'chordwise cosine'};
            app.meshtypeDropDown_3.Position = [180 66 100 22];
            app.meshtypeDropDown_3.Value = 'linear';

            % Create radiusofcurvatureEditField_3Label
            app.radiusofcurvatureEditField_3Label = uilabel(app.partition3Panel);
            app.radiusofcurvatureEditField_3Label.HorizontalAlignment = 'right';
            app.radiusofcurvatureEditField_3Label.Position = [58 6 105 22];
            app.radiusofcurvatureEditField_3Label.Text = 'radius of curvature';

            % Create radiusofcurvatureEditField_3
            app.radiusofcurvatureEditField_3 = uieditfield(app.partition3Panel, 'text');
            app.radiusofcurvatureEditField_3.Position = [179 6 45 22];

            % Create curvedDropDown_3Label
            app.curvedDropDown_3Label = uilabel(app.partition3Panel);
            app.curvedDropDown_3Label.HorizontalAlignment = 'right';
            app.curvedDropDown_3Label.Position = [123 37 42 22];
            app.curvedDropDown_3Label.Text = 'curved';

            % Create curvedDropDown_3
            app.curvedDropDown_3 = uidropdown(app.partition3Panel);
            app.curvedDropDown_3.Items = {'no', 'yes'};
            app.curvedDropDown_3.Position = [180 37 100 22];
            app.curvedDropDown_3.Value = 'no';

            % Create APEXxEditFieldLabel
            app.APEXxEditFieldLabel = uilabel(app.Foil1Panel);
            app.APEXxEditFieldLabel.HorizontalAlignment = 'right';
            app.APEXxEditFieldLabel.Position = [60 1526 47 22];
            app.APEXxEditFieldLabel.Text = 'APEX x';

            % Create APEXxEditField
            app.APEXxEditField = uieditfield(app.Foil1Panel, 'numeric');
            app.APEXxEditField.ValueChangedFcn = createCallbackFcn(app, @APEXxEditFieldValueChanged, true);
            app.APEXxEditField.Position = [122 1526 29 22];

            % Create yEditField_3Label
            app.yEditField_3Label = uilabel(app.Foil1Panel);
            app.yEditField_3Label.HorizontalAlignment = 'right';
            app.yEditField_3Label.Position = [154 1526 25 22];
            app.yEditField_3Label.Text = 'y';

            % Create yEditField_3
            app.yEditField_3 = uieditfield(app.Foil1Panel, 'numeric');
            app.yEditField_3.ValueChangedFcn = createCallbackFcn(app, @yEditField_3ValueChanged, true);
            app.yEditField_3.Position = [194 1526 29 22];

            % Create zEditField_3Label
            app.zEditField_3Label = uilabel(app.Foil1Panel);
            app.zEditField_3Label.HorizontalAlignment = 'right';
            app.zEditField_3Label.Position = [230 1526 25 22];
            app.zEditField_3Label.Text = 'z';

            % Create zEditField_3
            app.zEditField_3 = uieditfield(app.Foil1Panel, 'numeric');
            app.zEditField_3.ValueChangedFcn = createCallbackFcn(app, @zEditField_3ValueChanged, true);
            app.zEditField_3.Position = [270 1526 29 22];

            % Create noofpartitionsDropDownLabel
            app.noofpartitionsDropDownLabel = uilabel(app.Foil1Panel);
            app.noofpartitionsDropDownLabel.HorizontalAlignment = 'right';
            app.noofpartitionsDropDownLabel.Position = [56 1559 88 22];
            app.noofpartitionsDropDownLabel.Text = 'no. of partitions';

            % Create noofpartitionsDropDown
            app.noofpartitionsDropDown = uidropdown(app.Foil1Panel);
            app.noofpartitionsDropDown.Items = {'1', '2', '3'};
            app.noofpartitionsDropDown.ValueChangedFcn = createCallbackFcn(app, @noofpartitionsDropDownValueChanged, true);
            app.noofpartitionsDropDown.Position = [151 1559 100 22];
            app.noofpartitionsDropDown.Value = '1';

            % Create massEditFieldLabel
            app.massEditFieldLabel = uilabel(app.UIFigure);
            app.massEditFieldLabel.HorizontalAlignment = 'right';
            app.massEditFieldLabel.Position = [57 686 34 22];
            app.massEditFieldLabel.Text = 'mass';

            % Create massEditField
            app.massEditField = uieditfield(app.UIFigure, 'text');
            app.massEditField.ValueChangedFcn = createCallbackFcn(app, @massEditFieldValueChanged, true);
            app.massEditField.Position = [106 686 100 22];

            % Create IxxEditFieldLabel
            app.IxxEditFieldLabel = uilabel(app.UIFigure);
            app.IxxEditFieldLabel.HorizontalAlignment = 'right';
            app.IxxEditFieldLabel.Position = [46 651 25 22];
            app.IxxEditFieldLabel.Text = 'Ixx';

            % Create IxxEditField
            app.IxxEditField = uieditfield(app.UIFigure, 'text');
            app.IxxEditField.ValueChangedFcn = createCallbackFcn(app, @IxxEditFieldValueChanged, true);
            app.IxxEditField.Position = [86 651 38 22];

            % Create IyxEditFieldLabel
            app.IyxEditFieldLabel = uilabel(app.UIFigure);
            app.IyxEditFieldLabel.HorizontalAlignment = 'right';
            app.IyxEditFieldLabel.Position = [46 623 25 22];
            app.IyxEditFieldLabel.Text = 'Iyx';

            % Create IyxEditField
            app.IyxEditField = uieditfield(app.UIFigure, 'text');
            app.IyxEditField.ValueChangedFcn = createCallbackFcn(app, @IyxEditFieldValueChanged, true);
            app.IyxEditField.Position = [86 623 38 22];

            % Create IzxEditFieldLabel
            app.IzxEditFieldLabel = uilabel(app.UIFigure);
            app.IzxEditFieldLabel.HorizontalAlignment = 'right';
            app.IzxEditFieldLabel.Position = [46 593 25 22];
            app.IzxEditFieldLabel.Text = 'Izx';

            % Create IzxEditField
            app.IzxEditField = uieditfield(app.UIFigure, 'text');
            app.IzxEditField.ValueChangedFcn = createCallbackFcn(app, @IzxEditFieldValueChanged, true);
            app.IzxEditField.Position = [86 593 38 22];

            % Create IxyEditFieldLabel
            app.IxyEditFieldLabel = uilabel(app.UIFigure);
            app.IxyEditFieldLabel.HorizontalAlignment = 'right';
            app.IxyEditFieldLabel.Position = [131 651 25 22];
            app.IxyEditFieldLabel.Text = 'Ixy';

            % Create IxyEditField
            app.IxyEditField = uieditfield(app.UIFigure, 'text');
            app.IxyEditField.ValueChangedFcn = createCallbackFcn(app, @IxyEditFieldValueChanged, true);
            app.IxyEditField.Position = [171 651 38 22];

            % Create IyyEditFieldLabel
            app.IyyEditFieldLabel = uilabel(app.UIFigure);
            app.IyyEditFieldLabel.HorizontalAlignment = 'right';
            app.IyyEditFieldLabel.Position = [131 623 25 22];
            app.IyyEditFieldLabel.Text = 'Iyy';

            % Create IyyEditField
            app.IyyEditField = uieditfield(app.UIFigure, 'text');
            app.IyyEditField.ValueChangedFcn = createCallbackFcn(app, @IyyEditFieldValueChanged, true);
            app.IyyEditField.Position = [171 623 38 22];

            % Create IzyEditFieldLabel
            app.IzyEditFieldLabel = uilabel(app.UIFigure);
            app.IzyEditFieldLabel.HorizontalAlignment = 'right';
            app.IzyEditFieldLabel.Position = [131 593 25 22];
            app.IzyEditFieldLabel.Text = 'Izy';

            % Create IzyEditField
            app.IzyEditField = uieditfield(app.UIFigure, 'text');
            app.IzyEditField.ValueChangedFcn = createCallbackFcn(app, @IzyEditFieldValueChanged, true);
            app.IzyEditField.Position = [171 593 38 22];

            % Create IxzEditFieldLabel
            app.IxzEditFieldLabel = uilabel(app.UIFigure);
            app.IxzEditFieldLabel.HorizontalAlignment = 'right';
            app.IxzEditFieldLabel.Position = [219 651 25 22];
            app.IxzEditFieldLabel.Text = 'Ixz';

            % Create IxzEditField
            app.IxzEditField = uieditfield(app.UIFigure, 'text');
            app.IxzEditField.ValueChangedFcn = createCallbackFcn(app, @IxzEditFieldValueChanged, true);
            app.IxzEditField.Position = [259 651 38 22];

            % Create IyzEditFieldLabel
            app.IyzEditFieldLabel = uilabel(app.UIFigure);
            app.IyzEditFieldLabel.HorizontalAlignment = 'right';
            app.IyzEditFieldLabel.Position = [219 623 25 22];
            app.IyzEditFieldLabel.Text = 'Iyz';

            % Create IyzEditField
            app.IyzEditField = uieditfield(app.UIFigure, 'text');
            app.IyzEditField.ValueChangedFcn = createCallbackFcn(app, @IyzEditFieldValueChanged, true);
            app.IyzEditField.Position = [259 623 38 22];

            % Create IzzEditFieldLabel
            app.IzzEditFieldLabel = uilabel(app.UIFigure);
            app.IzzEditFieldLabel.HorizontalAlignment = 'right';
            app.IzzEditFieldLabel.Position = [219 593 25 22];
            app.IzzEditFieldLabel.Text = 'Izz';

            % Create IzzEditField
            app.IzzEditField = uieditfield(app.UIFigure, 'text');
            app.IzzEditField.ValueChangedFcn = createCallbackFcn(app, @IzzEditFieldValueChanged, true);
            app.IzzEditField.Position = [259 593 38 22];

            % Create COGxEditFieldLabel
            app.COGxEditFieldLabel = uilabel(app.UIFigure);
            app.COGxEditFieldLabel.HorizontalAlignment = 'right';
            app.COGxEditFieldLabel.Position = [55 508 42 22];
            app.COGxEditFieldLabel.Text = 'COG x';

            % Create COGxEditField
            app.COGxEditField = uieditfield(app.UIFigure, 'text');
            app.COGxEditField.ValueChangedFcn = createCallbackFcn(app, @COGxEditFieldValueChanged, true);
            app.COGxEditField.Position = [112 508 56 22];

            % Create yEditField_4Label
            app.yEditField_4Label = uilabel(app.UIFigure);
            app.yEditField_4Label.HorizontalAlignment = 'right';
            app.yEditField_4Label.Position = [167 508 25 22];
            app.yEditField_4Label.Text = 'y';

            % Create yEditField_4
            app.yEditField_4 = uieditfield(app.UIFigure, 'text');
            app.yEditField_4.ValueChangedFcn = createCallbackFcn(app, @yEditField_4ValueChanged, true);
            app.yEditField_4.Position = [213 508 56 22];

            % Create zEditField_4Label
            app.zEditField_4Label = uilabel(app.UIFigure);
            app.zEditField_4Label.HorizontalAlignment = 'right';
            app.zEditField_4Label.Position = [268 508 25 22];
            app.zEditField_4Label.Text = 'z';

            % Create zEditField_4
            app.zEditField_4 = uieditfield(app.UIFigure, 'text');
            app.zEditField_4.ValueChangedFcn = createCallbackFcn(app, @zEditField_4ValueChanged, true);
            app.zEditField_4.Position = [314 508 56 22];

            % Create REFxEditFieldLabel
            app.REFxEditFieldLabel = uilabel(app.UIFigure);
            app.REFxEditFieldLabel.HorizontalAlignment = 'right';
            app.REFxEditFieldLabel.Position = [58 478 39 22];
            app.REFxEditFieldLabel.Text = 'REF x';

            % Create REFxEditField
            app.REFxEditField = uieditfield(app.UIFigure, 'text');
            app.REFxEditField.ValueChangedFcn = createCallbackFcn(app, @REFxEditFieldValueChanged, true);
            app.REFxEditField.Position = [112 478 56 22];

            % Create yEditField_5Label
            app.yEditField_5Label = uilabel(app.UIFigure);
            app.yEditField_5Label.HorizontalAlignment = 'right';
            app.yEditField_5Label.Position = [167 478 25 22];
            app.yEditField_5Label.Text = 'y';

            % Create yEditField_5
            app.yEditField_5 = uieditfield(app.UIFigure, 'text');
            app.yEditField_5.ValueChangedFcn = createCallbackFcn(app, @yEditField_5ValueChanged, true);
            app.yEditField_5.Position = [213 478 56 22];

            % Create zEditField_5Label
            app.zEditField_5Label = uilabel(app.UIFigure);
            app.zEditField_5Label.HorizontalAlignment = 'right';
            app.zEditField_5Label.Position = [268 478 25 22];
            app.zEditField_5Label.Text = 'z';

            % Create zEditField_5
            app.zEditField_5 = uieditfield(app.UIFigure, 'text');
            app.zEditField_5.ValueChangedFcn = createCallbackFcn(app, @zEditField_5ValueChanged, true);
            app.zEditField_5.Position = [314 478 56 22];

            % Create Foil2Panel
            app.Foil2Panel = uipanel(app.UIFigure);
            app.Foil2Panel.Title = 'Foil 2';
            app.Foil2Panel.Visible = 'off';
            app.Foil2Panel.Scrollable = 'on';
            app.Foil2Panel.Position = [415 11 397 440];

            % Create MirroredCheckBox_2
            app.MirroredCheckBox_2 = uicheckbox(app.Foil2Panel);
            app.MirroredCheckBox_2.Text = 'Mirrored';
            app.MirroredCheckBox_2.Position = [56 1580 67 22];

            % Create partition1Panel_2
            app.partition1Panel_2 = uipanel(app.Foil2Panel);
            app.partition1Panel_2.Title = 'partition 1';
            app.partition1Panel_2.Position = [54 1012 311 492];

            % Create RootchordEditField_4Label
            app.RootchordEditField_4Label = uilabel(app.partition1Panel_2);
            app.RootchordEditField_4Label.HorizontalAlignment = 'right';
            app.RootchordEditField_4Label.Position = [45 438 64 22];
            app.RootchordEditField_4Label.Text = 'Root chord';

            % Create RootchordEditField_4
            app.RootchordEditField_4 = uieditfield(app.partition1Panel_2, 'text');
            app.RootchordEditField_4.HorizontalAlignment = 'right';
            app.RootchordEditField_4.Position = [124 438 100 22];

            % Create BasechordairfoilEditField_4Label
            app.BasechordairfoilEditField_4Label = uilabel(app.partition1Panel_2);
            app.BasechordairfoilEditField_4Label.HorizontalAlignment = 'right';
            app.BasechordairfoilEditField_4Label.Position = [11 401 98 22];
            app.BasechordairfoilEditField_4Label.Text = 'Base chord airfoil';

            % Create BasechordairfoilEditField_4
            app.BasechordairfoilEditField_4 = uieditfield(app.partition1Panel_2, 'text');
            app.BasechordairfoilEditField_4.HorizontalAlignment = 'right';
            app.BasechordairfoilEditField_4.Position = [123 401 100 22];

            % Create noofpanelschordwiseEditField_4Label
            app.noofpanelschordwiseEditField_4Label = uilabel(app.partition1Panel_2);
            app.noofpanelschordwiseEditField_4Label.HorizontalAlignment = 'right';
            app.noofpanelschordwiseEditField_4Label.Position = [28 369 135 22];
            app.noofpanelschordwiseEditField_4Label.Text = 'no. of panels chord wise';

            % Create noofpanelschordwiseEditField_4
            app.noofpanelschordwiseEditField_4 = uieditfield(app.partition1Panel_2, 'text');
            app.noofpanelschordwiseEditField_4.Position = [179 369 45 22];

            % Create dihedralEditField_4Label
            app.dihedralEditField_4Label = uilabel(app.partition1Panel_2);
            app.dihedralEditField_4Label.HorizontalAlignment = 'right';
            app.dihedralEditField_4Label.Position = [115 339 48 22];
            app.dihedralEditField_4Label.Text = 'dihedral';

            % Create dihedralEditField_4
            app.dihedralEditField_4 = uieditfield(app.partition1Panel_2, 'text');
            app.dihedralEditField_4.Position = [179 339 45 22];

            % Create pitchEditField_4Label
            app.pitchEditField_4Label = uilabel(app.partition1Panel_2);
            app.pitchEditField_4Label.HorizontalAlignment = 'right';
            app.pitchEditField_4Label.Position = [132 309 31 22];
            app.pitchEditField_4Label.Text = 'pitch';

            % Create pitchEditField_4
            app.pitchEditField_4 = uieditfield(app.partition1Panel_2, 'text');
            app.pitchEditField_4.Position = [179 309 45 22];

            % Create basechordtwistEditField_4Label
            app.basechordtwistEditField_4Label = uilabel(app.partition1Panel_2);
            app.basechordtwistEditField_4Label.HorizontalAlignment = 'right';
            app.basechordtwistEditField_4Label.Position = [71 280 92 22];
            app.basechordtwistEditField_4Label.Text = 'base chord twist';

            % Create basechordtwistEditField_4
            app.basechordtwistEditField_4 = uieditfield(app.partition1Panel_2, 'text');
            app.basechordtwistEditField_4.Position = [179 280 45 22];

            % Create noofpanelssemispanwiseEditField_4Label
            app.noofpanelssemispanwiseEditField_4Label = uilabel(app.partition1Panel_2);
            app.noofpanelssemispanwiseEditField_4Label.HorizontalAlignment = 'right';
            app.noofpanelssemispanwiseEditField_4Label.Position = [5 250 160 22];
            app.noofpanelssemispanwiseEditField_4Label.Text = 'no. of panels semi-span wise';

            % Create noofpanelssemispanwiseEditField_4
            app.noofpanelssemispanwiseEditField_4 = uieditfield(app.partition1Panel_2, 'text');
            app.noofpanelssemispanwiseEditField_4.Position = [179 250 45 22];

            % Create spanEditField_4Label
            app.spanEditField_4Label = uilabel(app.partition1Panel_2);
            app.spanEditField_4Label.HorizontalAlignment = 'right';
            app.spanEditField_4Label.Position = [131 221 32 22];
            app.spanEditField_4Label.Text = 'span';

            % Create spanEditField_4
            app.spanEditField_4 = uieditfield(app.partition1Panel_2, 'text');
            app.spanEditField_4.Position = [179 221 45 22];

            % Create taperEditField_4Label
            app.taperEditField_4Label = uilabel(app.partition1Panel_2);
            app.taperEditField_4Label.HorizontalAlignment = 'right';
            app.taperEditField_4Label.Position = [130 191 33 22];
            app.taperEditField_4Label.Text = 'taper';

            % Create taperEditField_4
            app.taperEditField_4 = uieditfield(app.partition1Panel_2, 'text');
            app.taperEditField_4.Position = [179 191 45 22];

            % Create tipchordairfoilEditField_4Label
            app.tipchordairfoilEditField_4Label = uilabel(app.partition1Panel_2);
            app.tipchordairfoilEditField_4Label.HorizontalAlignment = 'right';
            app.tipchordairfoilEditField_4Label.Position = [79 160 84 22];
            app.tipchordairfoilEditField_4Label.Text = 'tip chord airfoil';

            % Create tipchordairfoilEditField_4
            app.tipchordairfoilEditField_4 = uieditfield(app.partition1Panel_2, 'text');
            app.tipchordairfoilEditField_4.Position = [179 160 45 22];

            % Create sweepEditField_4Label
            app.sweepEditField_4Label = uilabel(app.partition1Panel_2);
            app.sweepEditField_4Label.HorizontalAlignment = 'right';
            app.sweepEditField_4Label.Position = [123 128 40 22];
            app.sweepEditField_4Label.Text = 'sweep';

            % Create sweepEditField_4
            app.sweepEditField_4 = uieditfield(app.partition1Panel_2, 'text');
            app.sweepEditField_4.Position = [179 128 45 22];

            % Create outboardtwistEditField_4Label
            app.outboardtwistEditField_4Label = uilabel(app.partition1Panel_2);
            app.outboardtwistEditField_4Label.HorizontalAlignment = 'right';
            app.outboardtwistEditField_4Label.Position = [83 96 80 22];
            app.outboardtwistEditField_4Label.Text = 'outboard twist';

            % Create outboardtwistEditField_4
            app.outboardtwistEditField_4 = uieditfield(app.partition1Panel_2, 'text');
            app.outboardtwistEditField_4.Position = [179 96 45 22];

            % Create meshtypeDropDown_4Label
            app.meshtypeDropDown_4Label = uilabel(app.partition1Panel_2);
            app.meshtypeDropDown_4Label.HorizontalAlignment = 'right';
            app.meshtypeDropDown_4Label.Position = [102 66 61 22];
            app.meshtypeDropDown_4Label.Text = 'mesh type';

            % Create meshtypeDropDown_4
            app.meshtypeDropDown_4 = uidropdown(app.partition1Panel_2);
            app.meshtypeDropDown_4.Items = {'linear', 'span-wise half cosine', 'spanwise half-cosine, chordwise', 'spanwise cosine', 'chordwise cosine'};
            app.meshtypeDropDown_4.Position = [180 66 100 22];
            app.meshtypeDropDown_4.Value = 'linear';

            % Create radiusofcurvatureEditField_4Label
            app.radiusofcurvatureEditField_4Label = uilabel(app.partition1Panel_2);
            app.radiusofcurvatureEditField_4Label.HorizontalAlignment = 'right';
            app.radiusofcurvatureEditField_4Label.Position = [58 6 105 22];
            app.radiusofcurvatureEditField_4Label.Text = 'radius of curvature';

            % Create radiusofcurvatureEditField_4
            app.radiusofcurvatureEditField_4 = uieditfield(app.partition1Panel_2, 'text');
            app.radiusofcurvatureEditField_4.Position = [179 6 45 22];

            % Create curvedDropDown_4Label
            app.curvedDropDown_4Label = uilabel(app.partition1Panel_2);
            app.curvedDropDown_4Label.HorizontalAlignment = 'right';
            app.curvedDropDown_4Label.Position = [123 37 42 22];
            app.curvedDropDown_4Label.Text = 'curved';

            % Create curvedDropDown_4
            app.curvedDropDown_4 = uidropdown(app.partition1Panel_2);
            app.curvedDropDown_4.Items = {'no', 'yes'};
            app.curvedDropDown_4.Position = [180 37 100 22];
            app.curvedDropDown_4.Value = 'no';

            % Create partition2Panel_2
            app.partition2Panel_2 = uipanel(app.Foil2Panel);
            app.partition2Panel_2.Title = 'partition 2';
            app.partition2Panel_2.Visible = 'off';
            app.partition2Panel_2.Position = [54 512 311 492];

            % Create RootchordEditField_5Label
            app.RootchordEditField_5Label = uilabel(app.partition2Panel_2);
            app.RootchordEditField_5Label.HorizontalAlignment = 'right';
            app.RootchordEditField_5Label.Position = [45 438 64 22];
            app.RootchordEditField_5Label.Text = 'Root chord';

            % Create RootchordEditField_5
            app.RootchordEditField_5 = uieditfield(app.partition2Panel_2, 'text');
            app.RootchordEditField_5.HorizontalAlignment = 'right';
            app.RootchordEditField_5.Position = [124 438 100 22];

            % Create BasechordairfoilEditField_5Label
            app.BasechordairfoilEditField_5Label = uilabel(app.partition2Panel_2);
            app.BasechordairfoilEditField_5Label.HorizontalAlignment = 'right';
            app.BasechordairfoilEditField_5Label.Position = [11 401 98 22];
            app.BasechordairfoilEditField_5Label.Text = 'Base chord airfoil';

            % Create BasechordairfoilEditField_5
            app.BasechordairfoilEditField_5 = uieditfield(app.partition2Panel_2, 'text');
            app.BasechordairfoilEditField_5.HorizontalAlignment = 'right';
            app.BasechordairfoilEditField_5.Position = [123 401 100 22];

            % Create noofpanelschordwiseEditField_5Label
            app.noofpanelschordwiseEditField_5Label = uilabel(app.partition2Panel_2);
            app.noofpanelschordwiseEditField_5Label.HorizontalAlignment = 'right';
            app.noofpanelschordwiseEditField_5Label.Position = [28 369 135 22];
            app.noofpanelschordwiseEditField_5Label.Text = 'no. of panels chord wise';

            % Create noofpanelschordwiseEditField_5
            app.noofpanelschordwiseEditField_5 = uieditfield(app.partition2Panel_2, 'text');
            app.noofpanelschordwiseEditField_5.Position = [179 369 45 22];

            % Create dihedralEditField_5Label
            app.dihedralEditField_5Label = uilabel(app.partition2Panel_2);
            app.dihedralEditField_5Label.HorizontalAlignment = 'right';
            app.dihedralEditField_5Label.Position = [115 339 48 22];
            app.dihedralEditField_5Label.Text = 'dihedral';

            % Create dihedralEditField_5
            app.dihedralEditField_5 = uieditfield(app.partition2Panel_2, 'text');
            app.dihedralEditField_5.Position = [179 339 45 22];

            % Create pitchEditField_5Label
            app.pitchEditField_5Label = uilabel(app.partition2Panel_2);
            app.pitchEditField_5Label.HorizontalAlignment = 'right';
            app.pitchEditField_5Label.Position = [132 309 31 22];
            app.pitchEditField_5Label.Text = 'pitch';

            % Create pitchEditField_5
            app.pitchEditField_5 = uieditfield(app.partition2Panel_2, 'text');
            app.pitchEditField_5.Position = [179 309 45 22];

            % Create basechordtwistEditField_5Label
            app.basechordtwistEditField_5Label = uilabel(app.partition2Panel_2);
            app.basechordtwistEditField_5Label.HorizontalAlignment = 'right';
            app.basechordtwistEditField_5Label.Position = [71 280 92 22];
            app.basechordtwistEditField_5Label.Text = 'base chord twist';

            % Create basechordtwistEditField_5
            app.basechordtwistEditField_5 = uieditfield(app.partition2Panel_2, 'text');
            app.basechordtwistEditField_5.Position = [179 280 45 22];

            % Create noofpanelssemispanwiseEditField_5Label
            app.noofpanelssemispanwiseEditField_5Label = uilabel(app.partition2Panel_2);
            app.noofpanelssemispanwiseEditField_5Label.HorizontalAlignment = 'right';
            app.noofpanelssemispanwiseEditField_5Label.Position = [5 250 160 22];
            app.noofpanelssemispanwiseEditField_5Label.Text = 'no. of panels semi-span wise';

            % Create noofpanelssemispanwiseEditField_5
            app.noofpanelssemispanwiseEditField_5 = uieditfield(app.partition2Panel_2, 'text');
            app.noofpanelssemispanwiseEditField_5.Position = [179 250 45 22];

            % Create spanEditField_5Label
            app.spanEditField_5Label = uilabel(app.partition2Panel_2);
            app.spanEditField_5Label.HorizontalAlignment = 'right';
            app.spanEditField_5Label.Position = [131 221 32 22];
            app.spanEditField_5Label.Text = 'span';

            % Create spanEditField_5
            app.spanEditField_5 = uieditfield(app.partition2Panel_2, 'text');
            app.spanEditField_5.Position = [179 221 45 22];

            % Create taperEditField_5Label
            app.taperEditField_5Label = uilabel(app.partition2Panel_2);
            app.taperEditField_5Label.HorizontalAlignment = 'right';
            app.taperEditField_5Label.Position = [130 191 33 22];
            app.taperEditField_5Label.Text = 'taper';

            % Create taperEditField_5
            app.taperEditField_5 = uieditfield(app.partition2Panel_2, 'text');
            app.taperEditField_5.Position = [179 191 45 22];

            % Create tipchordairfoilEditField_5Label
            app.tipchordairfoilEditField_5Label = uilabel(app.partition2Panel_2);
            app.tipchordairfoilEditField_5Label.HorizontalAlignment = 'right';
            app.tipchordairfoilEditField_5Label.Position = [79 160 84 22];
            app.tipchordairfoilEditField_5Label.Text = 'tip chord airfoil';

            % Create tipchordairfoilEditField_5
            app.tipchordairfoilEditField_5 = uieditfield(app.partition2Panel_2, 'text');
            app.tipchordairfoilEditField_5.Position = [179 160 45 22];

            % Create sweepEditField_5Label
            app.sweepEditField_5Label = uilabel(app.partition2Panel_2);
            app.sweepEditField_5Label.HorizontalAlignment = 'right';
            app.sweepEditField_5Label.Position = [123 128 40 22];
            app.sweepEditField_5Label.Text = 'sweep';

            % Create sweepEditField_5
            app.sweepEditField_5 = uieditfield(app.partition2Panel_2, 'text');
            app.sweepEditField_5.Position = [179 128 45 22];

            % Create outboardtwistEditField_5Label
            app.outboardtwistEditField_5Label = uilabel(app.partition2Panel_2);
            app.outboardtwistEditField_5Label.HorizontalAlignment = 'right';
            app.outboardtwistEditField_5Label.Position = [83 96 80 22];
            app.outboardtwistEditField_5Label.Text = 'outboard twist';

            % Create outboardtwistEditField_5
            app.outboardtwistEditField_5 = uieditfield(app.partition2Panel_2, 'text');
            app.outboardtwistEditField_5.Position = [179 96 45 22];

            % Create meshtypeDropDown_5Label
            app.meshtypeDropDown_5Label = uilabel(app.partition2Panel_2);
            app.meshtypeDropDown_5Label.HorizontalAlignment = 'right';
            app.meshtypeDropDown_5Label.Position = [102 66 61 22];
            app.meshtypeDropDown_5Label.Text = 'mesh type';

            % Create meshtypeDropDown_5
            app.meshtypeDropDown_5 = uidropdown(app.partition2Panel_2);
            app.meshtypeDropDown_5.Items = {'linear', 'span-wise half cosine', 'spanwise half-cosine, chordwise', 'spanwise cosine', 'chordwise cosine'};
            app.meshtypeDropDown_5.Position = [180 66 100 22];
            app.meshtypeDropDown_5.Value = 'linear';

            % Create radiusofcurvatureEditField_5Label
            app.radiusofcurvatureEditField_5Label = uilabel(app.partition2Panel_2);
            app.radiusofcurvatureEditField_5Label.HorizontalAlignment = 'right';
            app.radiusofcurvatureEditField_5Label.Position = [58 6 105 22];
            app.radiusofcurvatureEditField_5Label.Text = 'radius of curvature';

            % Create radiusofcurvatureEditField_5
            app.radiusofcurvatureEditField_5 = uieditfield(app.partition2Panel_2, 'text');
            app.radiusofcurvatureEditField_5.Position = [179 6 45 22];

            % Create curvedDropDown_5Label
            app.curvedDropDown_5Label = uilabel(app.partition2Panel_2);
            app.curvedDropDown_5Label.HorizontalAlignment = 'right';
            app.curvedDropDown_5Label.Position = [123 37 42 22];
            app.curvedDropDown_5Label.Text = 'curved';

            % Create curvedDropDown_5
            app.curvedDropDown_5 = uidropdown(app.partition2Panel_2);
            app.curvedDropDown_5.Items = {'no', 'yes'};
            app.curvedDropDown_5.Position = [180 37 100 22];
            app.curvedDropDown_5.Value = 'no';

            % Create partition3Panel_2
            app.partition3Panel_2 = uipanel(app.Foil2Panel);
            app.partition3Panel_2.Title = 'partition 3';
            app.partition3Panel_2.Visible = 'off';
            app.partition3Panel_2.Position = [54 10 311 492];

            % Create RootchordEditField_6Label
            app.RootchordEditField_6Label = uilabel(app.partition3Panel_2);
            app.RootchordEditField_6Label.HorizontalAlignment = 'right';
            app.RootchordEditField_6Label.Position = [45 438 64 22];
            app.RootchordEditField_6Label.Text = 'Root chord';

            % Create RootchordEditField_6
            app.RootchordEditField_6 = uieditfield(app.partition3Panel_2, 'text');
            app.RootchordEditField_6.HorizontalAlignment = 'right';
            app.RootchordEditField_6.Position = [124 438 100 22];

            % Create BasechordairfoilEditField_6Label
            app.BasechordairfoilEditField_6Label = uilabel(app.partition3Panel_2);
            app.BasechordairfoilEditField_6Label.HorizontalAlignment = 'right';
            app.BasechordairfoilEditField_6Label.Position = [11 401 98 22];
            app.BasechordairfoilEditField_6Label.Text = 'Base chord airfoil';

            % Create BasechordairfoilEditField_6
            app.BasechordairfoilEditField_6 = uieditfield(app.partition3Panel_2, 'text');
            app.BasechordairfoilEditField_6.HorizontalAlignment = 'right';
            app.BasechordairfoilEditField_6.Position = [123 401 100 22];

            % Create noofpanelschordwiseEditField_6Label
            app.noofpanelschordwiseEditField_6Label = uilabel(app.partition3Panel_2);
            app.noofpanelschordwiseEditField_6Label.HorizontalAlignment = 'right';
            app.noofpanelschordwiseEditField_6Label.Position = [28 369 135 22];
            app.noofpanelschordwiseEditField_6Label.Text = 'no. of panels chord wise';

            % Create noofpanelschordwiseEditField_6
            app.noofpanelschordwiseEditField_6 = uieditfield(app.partition3Panel_2, 'text');
            app.noofpanelschordwiseEditField_6.Position = [179 369 45 22];

            % Create dihedralEditField_6Label
            app.dihedralEditField_6Label = uilabel(app.partition3Panel_2);
            app.dihedralEditField_6Label.HorizontalAlignment = 'right';
            app.dihedralEditField_6Label.Position = [115 339 48 22];
            app.dihedralEditField_6Label.Text = 'dihedral';

            % Create dihedralEditField_6
            app.dihedralEditField_6 = uieditfield(app.partition3Panel_2, 'text');
            app.dihedralEditField_6.Position = [179 339 45 22];

            % Create pitchEditField_6Label
            app.pitchEditField_6Label = uilabel(app.partition3Panel_2);
            app.pitchEditField_6Label.HorizontalAlignment = 'right';
            app.pitchEditField_6Label.Position = [132 309 31 22];
            app.pitchEditField_6Label.Text = 'pitch';

            % Create pitchEditField_6
            app.pitchEditField_6 = uieditfield(app.partition3Panel_2, 'text');
            app.pitchEditField_6.Position = [179 309 45 22];

            % Create basechordtwistEditField_6Label
            app.basechordtwistEditField_6Label = uilabel(app.partition3Panel_2);
            app.basechordtwistEditField_6Label.HorizontalAlignment = 'right';
            app.basechordtwistEditField_6Label.Position = [71 280 92 22];
            app.basechordtwistEditField_6Label.Text = 'base chord twist';

            % Create basechordtwistEditField_6
            app.basechordtwistEditField_6 = uieditfield(app.partition3Panel_2, 'text');
            app.basechordtwistEditField_6.Position = [179 280 45 22];

            % Create noofpanelssemispanwiseEditField_6Label
            app.noofpanelssemispanwiseEditField_6Label = uilabel(app.partition3Panel_2);
            app.noofpanelssemispanwiseEditField_6Label.HorizontalAlignment = 'right';
            app.noofpanelssemispanwiseEditField_6Label.Position = [3 250 160 22];
            app.noofpanelssemispanwiseEditField_6Label.Text = 'no. of panels semi-span wise';

            % Create noofpanelssemispanwiseEditField_6
            app.noofpanelssemispanwiseEditField_6 = uieditfield(app.partition3Panel_2, 'text');
            app.noofpanelssemispanwiseEditField_6.Position = [179 250 45 22];

            % Create spanEditField_6Label
            app.spanEditField_6Label = uilabel(app.partition3Panel_2);
            app.spanEditField_6Label.HorizontalAlignment = 'right';
            app.spanEditField_6Label.Position = [131 221 32 22];
            app.spanEditField_6Label.Text = 'span';

            % Create spanEditField_6
            app.spanEditField_6 = uieditfield(app.partition3Panel_2, 'text');
            app.spanEditField_6.Position = [179 221 45 22];

            % Create taperEditField_6Label
            app.taperEditField_6Label = uilabel(app.partition3Panel_2);
            app.taperEditField_6Label.HorizontalAlignment = 'right';
            app.taperEditField_6Label.Position = [130 191 33 22];
            app.taperEditField_6Label.Text = 'taper';

            % Create taperEditField_6
            app.taperEditField_6 = uieditfield(app.partition3Panel_2, 'text');
            app.taperEditField_6.Position = [179 191 45 22];

            % Create tipchordairfoilEditField_6Label
            app.tipchordairfoilEditField_6Label = uilabel(app.partition3Panel_2);
            app.tipchordairfoilEditField_6Label.HorizontalAlignment = 'right';
            app.tipchordairfoilEditField_6Label.Position = [79 160 84 22];
            app.tipchordairfoilEditField_6Label.Text = 'tip chord airfoil';

            % Create tipchordairfoilEditField_6
            app.tipchordairfoilEditField_6 = uieditfield(app.partition3Panel_2, 'text');
            app.tipchordairfoilEditField_6.Position = [179 160 45 22];

            % Create sweepEditField_6Label
            app.sweepEditField_6Label = uilabel(app.partition3Panel_2);
            app.sweepEditField_6Label.HorizontalAlignment = 'right';
            app.sweepEditField_6Label.Position = [123 128 40 22];
            app.sweepEditField_6Label.Text = 'sweep';

            % Create sweepEditField_6
            app.sweepEditField_6 = uieditfield(app.partition3Panel_2, 'text');
            app.sweepEditField_6.Position = [179 128 45 22];

            % Create outboardtwistEditField_6Label
            app.outboardtwistEditField_6Label = uilabel(app.partition3Panel_2);
            app.outboardtwistEditField_6Label.HorizontalAlignment = 'right';
            app.outboardtwistEditField_6Label.Position = [83 96 80 22];
            app.outboardtwistEditField_6Label.Text = 'outboard twist';

            % Create outboardtwistEditField_6
            app.outboardtwistEditField_6 = uieditfield(app.partition3Panel_2, 'text');
            app.outboardtwistEditField_6.Position = [179 96 45 22];

            % Create meshtypeDropDown_6Label
            app.meshtypeDropDown_6Label = uilabel(app.partition3Panel_2);
            app.meshtypeDropDown_6Label.HorizontalAlignment = 'right';
            app.meshtypeDropDown_6Label.Position = [102 66 61 22];
            app.meshtypeDropDown_6Label.Text = 'mesh type';

            % Create meshtypeDropDown_6
            app.meshtypeDropDown_6 = uidropdown(app.partition3Panel_2);
            app.meshtypeDropDown_6.Items = {'linear', 'span-wise half cosine', 'spanwise half-cosine, chordwise', 'spanwise cosine', 'chordwise cosine'};
            app.meshtypeDropDown_6.Position = [180 66 100 22];
            app.meshtypeDropDown_6.Value = 'linear';

            % Create radiusofcurvatureEditField_6Label
            app.radiusofcurvatureEditField_6Label = uilabel(app.partition3Panel_2);
            app.radiusofcurvatureEditField_6Label.HorizontalAlignment = 'right';
            app.radiusofcurvatureEditField_6Label.Position = [58 6 105 22];
            app.radiusofcurvatureEditField_6Label.Text = 'radius of curvature';

            % Create radiusofcurvatureEditField_6
            app.radiusofcurvatureEditField_6 = uieditfield(app.partition3Panel_2, 'text');
            app.radiusofcurvatureEditField_6.Position = [179 6 45 22];

            % Create curvedDropDown_6Label
            app.curvedDropDown_6Label = uilabel(app.partition3Panel_2);
            app.curvedDropDown_6Label.HorizontalAlignment = 'right';
            app.curvedDropDown_6Label.Position = [123 37 42 22];
            app.curvedDropDown_6Label.Text = 'curved';

            % Create curvedDropDown_6
            app.curvedDropDown_6 = uidropdown(app.partition3Panel_2);
            app.curvedDropDown_6.Items = {'no', 'yes'};
            app.curvedDropDown_6.Position = [180 37 100 22];
            app.curvedDropDown_6.Value = 'no';

            % Create APEXxEditField_2Label
            app.APEXxEditField_2Label = uilabel(app.Foil2Panel);
            app.APEXxEditField_2Label.HorizontalAlignment = 'right';
            app.APEXxEditField_2Label.Position = [60 1526 47 22];
            app.APEXxEditField_2Label.Text = 'APEX x';

            % Create APEXxEditField_2
            app.APEXxEditField_2 = uieditfield(app.Foil2Panel, 'numeric');
            app.APEXxEditField_2.Position = [122 1526 29 22];

            % Create yEditField_6Label
            app.yEditField_6Label = uilabel(app.Foil2Panel);
            app.yEditField_6Label.HorizontalAlignment = 'right';
            app.yEditField_6Label.Position = [154 1526 25 22];
            app.yEditField_6Label.Text = 'y';

            % Create yEditField_6
            app.yEditField_6 = uieditfield(app.Foil2Panel, 'numeric');
            app.yEditField_6.Position = [194 1526 29 22];

            % Create zEditField_6Label
            app.zEditField_6Label = uilabel(app.Foil2Panel);
            app.zEditField_6Label.HorizontalAlignment = 'right';
            app.zEditField_6Label.Position = [230 1526 25 22];
            app.zEditField_6Label.Text = 'z';

            % Create zEditField_6
            app.zEditField_6 = uieditfield(app.Foil2Panel, 'numeric');
            app.zEditField_6.Position = [270 1526 29 22];

            % Create noofpartitionsDropDown_2Label
            app.noofpartitionsDropDown_2Label = uilabel(app.Foil2Panel);
            app.noofpartitionsDropDown_2Label.HorizontalAlignment = 'right';
            app.noofpartitionsDropDown_2Label.Position = [56 1559 88 22];
            app.noofpartitionsDropDown_2Label.Text = 'no. of partitions';

            % Create noofpartitionsDropDown_2
            app.noofpartitionsDropDown_2 = uidropdown(app.Foil2Panel);
            app.noofpartitionsDropDown_2.Items = {'1', '2', '3'};
            app.noofpartitionsDropDown_2.ValueChangedFcn = createCallbackFcn(app, @noofpartitionsDropDown_2ValueChanged, true);
            app.noofpartitionsDropDown_2.Position = [151 1559 100 22];
            app.noofpartitionsDropDown_2.Value = '1';

            % Create Foil3Panel
            app.Foil3Panel = uipanel(app.UIFigure);
            app.Foil3Panel.Title = 'Foil 3';
            app.Foil3Panel.Visible = 'off';
            app.Foil3Panel.Scrollable = 'on';
            app.Foil3Panel.Position = [826 11 401 440];

            % Create MirroredCheckBox_3
            app.MirroredCheckBox_3 = uicheckbox(app.Foil3Panel);
            app.MirroredCheckBox_3.Text = 'Mirrored';
            app.MirroredCheckBox_3.Position = [56 1580 67 22];

            % Create partition1Panel_3
            app.partition1Panel_3 = uipanel(app.Foil3Panel);
            app.partition1Panel_3.Title = 'partition 1';
            app.partition1Panel_3.Position = [54 1012 311 492];

            % Create RootchordEditField_7Label
            app.RootchordEditField_7Label = uilabel(app.partition1Panel_3);
            app.RootchordEditField_7Label.HorizontalAlignment = 'right';
            app.RootchordEditField_7Label.Position = [45 438 64 22];
            app.RootchordEditField_7Label.Text = 'Root chord';

            % Create RootchordEditField_7
            app.RootchordEditField_7 = uieditfield(app.partition1Panel_3, 'text');
            app.RootchordEditField_7.HorizontalAlignment = 'right';
            app.RootchordEditField_7.Position = [124 438 100 22];

            % Create BasechordairfoilEditField_7Label
            app.BasechordairfoilEditField_7Label = uilabel(app.partition1Panel_3);
            app.BasechordairfoilEditField_7Label.HorizontalAlignment = 'right';
            app.BasechordairfoilEditField_7Label.Position = [11 401 98 22];
            app.BasechordairfoilEditField_7Label.Text = 'Base chord airfoil';

            % Create BasechordairfoilEditField_7
            app.BasechordairfoilEditField_7 = uieditfield(app.partition1Panel_3, 'text');
            app.BasechordairfoilEditField_7.HorizontalAlignment = 'right';
            app.BasechordairfoilEditField_7.Position = [123 401 100 22];

            % Create noofpanelschordwiseEditField_7Label
            app.noofpanelschordwiseEditField_7Label = uilabel(app.partition1Panel_3);
            app.noofpanelschordwiseEditField_7Label.HorizontalAlignment = 'right';
            app.noofpanelschordwiseEditField_7Label.Position = [28 369 135 22];
            app.noofpanelschordwiseEditField_7Label.Text = 'no. of panels chord wise';

            % Create noofpanelschordwiseEditField_7
            app.noofpanelschordwiseEditField_7 = uieditfield(app.partition1Panel_3, 'text');
            app.noofpanelschordwiseEditField_7.Position = [179 369 45 22];

            % Create dihedralEditField_7Label
            app.dihedralEditField_7Label = uilabel(app.partition1Panel_3);
            app.dihedralEditField_7Label.HorizontalAlignment = 'right';
            app.dihedralEditField_7Label.Position = [115 339 48 22];
            app.dihedralEditField_7Label.Text = 'dihedral';

            % Create dihedralEditField_7
            app.dihedralEditField_7 = uieditfield(app.partition1Panel_3, 'text');
            app.dihedralEditField_7.Position = [179 339 45 22];

            % Create pitchEditField_7Label
            app.pitchEditField_7Label = uilabel(app.partition1Panel_3);
            app.pitchEditField_7Label.HorizontalAlignment = 'right';
            app.pitchEditField_7Label.Position = [132 309 31 22];
            app.pitchEditField_7Label.Text = 'pitch';

            % Create pitchEditField_7
            app.pitchEditField_7 = uieditfield(app.partition1Panel_3, 'text');
            app.pitchEditField_7.Position = [179 309 45 22];

            % Create basechordtwistEditField_7Label
            app.basechordtwistEditField_7Label = uilabel(app.partition1Panel_3);
            app.basechordtwistEditField_7Label.HorizontalAlignment = 'right';
            app.basechordtwistEditField_7Label.Position = [71 280 92 22];
            app.basechordtwistEditField_7Label.Text = 'base chord twist';

            % Create basechordtwistEditField_7
            app.basechordtwistEditField_7 = uieditfield(app.partition1Panel_3, 'text');
            app.basechordtwistEditField_7.Position = [179 280 45 22];

            % Create noofpanelssemispanwiseEditField_7Label
            app.noofpanelssemispanwiseEditField_7Label = uilabel(app.partition1Panel_3);
            app.noofpanelssemispanwiseEditField_7Label.HorizontalAlignment = 'right';
            app.noofpanelssemispanwiseEditField_7Label.Position = [5 250 160 22];
            app.noofpanelssemispanwiseEditField_7Label.Text = 'no. of panels semi-span wise';

            % Create noofpanelssemispanwiseEditField_7
            app.noofpanelssemispanwiseEditField_7 = uieditfield(app.partition1Panel_3, 'text');
            app.noofpanelssemispanwiseEditField_7.Position = [179 250 45 22];

            % Create spanEditField_7Label
            app.spanEditField_7Label = uilabel(app.partition1Panel_3);
            app.spanEditField_7Label.HorizontalAlignment = 'right';
            app.spanEditField_7Label.Position = [131 221 32 22];
            app.spanEditField_7Label.Text = 'span';

            % Create spanEditField_7
            app.spanEditField_7 = uieditfield(app.partition1Panel_3, 'text');
            app.spanEditField_7.Position = [179 221 45 22];

            % Create taperEditField_7Label
            app.taperEditField_7Label = uilabel(app.partition1Panel_3);
            app.taperEditField_7Label.HorizontalAlignment = 'right';
            app.taperEditField_7Label.Position = [130 191 33 22];
            app.taperEditField_7Label.Text = 'taper';

            % Create taperEditField_7
            app.taperEditField_7 = uieditfield(app.partition1Panel_3, 'text');
            app.taperEditField_7.Position = [179 191 45 22];

            % Create tipchordairfoilEditField_7Label
            app.tipchordairfoilEditField_7Label = uilabel(app.partition1Panel_3);
            app.tipchordairfoilEditField_7Label.HorizontalAlignment = 'right';
            app.tipchordairfoilEditField_7Label.Position = [79 160 84 22];
            app.tipchordairfoilEditField_7Label.Text = 'tip chord airfoil';

            % Create tipchordairfoilEditField_7
            app.tipchordairfoilEditField_7 = uieditfield(app.partition1Panel_3, 'text');
            app.tipchordairfoilEditField_7.Position = [179 160 45 22];

            % Create sweepEditField_7Label
            app.sweepEditField_7Label = uilabel(app.partition1Panel_3);
            app.sweepEditField_7Label.HorizontalAlignment = 'right';
            app.sweepEditField_7Label.Position = [123 128 40 22];
            app.sweepEditField_7Label.Text = 'sweep';

            % Create sweepEditField_7
            app.sweepEditField_7 = uieditfield(app.partition1Panel_3, 'text');
            app.sweepEditField_7.Position = [179 128 45 22];

            % Create outboardtwistEditField_7Label
            app.outboardtwistEditField_7Label = uilabel(app.partition1Panel_3);
            app.outboardtwistEditField_7Label.HorizontalAlignment = 'right';
            app.outboardtwistEditField_7Label.Position = [83 96 80 22];
            app.outboardtwistEditField_7Label.Text = 'outboard twist';

            % Create outboardtwistEditField_7
            app.outboardtwistEditField_7 = uieditfield(app.partition1Panel_3, 'text');
            app.outboardtwistEditField_7.Position = [179 96 45 22];

            % Create meshtypeDropDown_7Label
            app.meshtypeDropDown_7Label = uilabel(app.partition1Panel_3);
            app.meshtypeDropDown_7Label.HorizontalAlignment = 'right';
            app.meshtypeDropDown_7Label.Position = [102 66 61 22];
            app.meshtypeDropDown_7Label.Text = 'mesh type';

            % Create meshtypeDropDown_7
            app.meshtypeDropDown_7 = uidropdown(app.partition1Panel_3);
            app.meshtypeDropDown_7.Items = {'linear', 'span-wise half cosine', 'spanwise half-cosine, chordwise', 'spanwise cosine', 'chordwise cosine'};
            app.meshtypeDropDown_7.Position = [180 66 100 22];
            app.meshtypeDropDown_7.Value = 'linear';

            % Create radiusofcurvatureEditField_7Label
            app.radiusofcurvatureEditField_7Label = uilabel(app.partition1Panel_3);
            app.radiusofcurvatureEditField_7Label.HorizontalAlignment = 'right';
            app.radiusofcurvatureEditField_7Label.Position = [58 6 105 22];
            app.radiusofcurvatureEditField_7Label.Text = 'radius of curvature';

            % Create radiusofcurvatureEditField_7
            app.radiusofcurvatureEditField_7 = uieditfield(app.partition1Panel_3, 'text');
            app.radiusofcurvatureEditField_7.Position = [179 6 45 22];

            % Create curvedDropDown_7Label
            app.curvedDropDown_7Label = uilabel(app.partition1Panel_3);
            app.curvedDropDown_7Label.HorizontalAlignment = 'right';
            app.curvedDropDown_7Label.Position = [123 37 42 22];
            app.curvedDropDown_7Label.Text = 'curved';

            % Create curvedDropDown_7
            app.curvedDropDown_7 = uidropdown(app.partition1Panel_3);
            app.curvedDropDown_7.Items = {'no', 'yes'};
            app.curvedDropDown_7.Position = [180 37 100 22];
            app.curvedDropDown_7.Value = 'no';

            % Create partition2Panel_3
            app.partition2Panel_3 = uipanel(app.Foil3Panel);
            app.partition2Panel_3.Title = 'partition 2';
            app.partition2Panel_3.Visible = 'off';
            app.partition2Panel_3.Position = [54 512 311 492];

            % Create RootchordEditField_8Label
            app.RootchordEditField_8Label = uilabel(app.partition2Panel_3);
            app.RootchordEditField_8Label.HorizontalAlignment = 'right';
            app.RootchordEditField_8Label.Position = [45 438 64 22];
            app.RootchordEditField_8Label.Text = 'Root chord';

            % Create RootchordEditField_8
            app.RootchordEditField_8 = uieditfield(app.partition2Panel_3, 'text');
            app.RootchordEditField_8.HorizontalAlignment = 'right';
            app.RootchordEditField_8.Position = [124 438 100 22];

            % Create BasechordairfoilEditField_8Label
            app.BasechordairfoilEditField_8Label = uilabel(app.partition2Panel_3);
            app.BasechordairfoilEditField_8Label.HorizontalAlignment = 'right';
            app.BasechordairfoilEditField_8Label.Position = [11 401 98 22];
            app.BasechordairfoilEditField_8Label.Text = 'Base chord airfoil';

            % Create BasechordairfoilEditField_8
            app.BasechordairfoilEditField_8 = uieditfield(app.partition2Panel_3, 'text');
            app.BasechordairfoilEditField_8.HorizontalAlignment = 'right';
            app.BasechordairfoilEditField_8.Position = [123 401 100 22];

            % Create noofpanelschordwiseEditField_8Label
            app.noofpanelschordwiseEditField_8Label = uilabel(app.partition2Panel_3);
            app.noofpanelschordwiseEditField_8Label.HorizontalAlignment = 'right';
            app.noofpanelschordwiseEditField_8Label.Position = [28 369 135 22];
            app.noofpanelschordwiseEditField_8Label.Text = 'no. of panels chord wise';

            % Create noofpanelschordwiseEditField_8
            app.noofpanelschordwiseEditField_8 = uieditfield(app.partition2Panel_3, 'text');
            app.noofpanelschordwiseEditField_8.Position = [179 369 45 22];

            % Create dihedralEditField_8Label
            app.dihedralEditField_8Label = uilabel(app.partition2Panel_3);
            app.dihedralEditField_8Label.HorizontalAlignment = 'right';
            app.dihedralEditField_8Label.Position = [115 339 48 22];
            app.dihedralEditField_8Label.Text = 'dihedral';

            % Create dihedralEditField_8
            app.dihedralEditField_8 = uieditfield(app.partition2Panel_3, 'text');
            app.dihedralEditField_8.Position = [179 339 45 22];

            % Create pitchEditField_8Label
            app.pitchEditField_8Label = uilabel(app.partition2Panel_3);
            app.pitchEditField_8Label.HorizontalAlignment = 'right';
            app.pitchEditField_8Label.Position = [132 309 31 22];
            app.pitchEditField_8Label.Text = 'pitch';

            % Create pitchEditField_8
            app.pitchEditField_8 = uieditfield(app.partition2Panel_3, 'text');
            app.pitchEditField_8.Position = [179 309 45 22];

            % Create basechordtwistEditField_8Label
            app.basechordtwistEditField_8Label = uilabel(app.partition2Panel_3);
            app.basechordtwistEditField_8Label.HorizontalAlignment = 'right';
            app.basechordtwistEditField_8Label.Position = [71 280 92 22];
            app.basechordtwistEditField_8Label.Text = 'base chord twist';

            % Create basechordtwistEditField_8
            app.basechordtwistEditField_8 = uieditfield(app.partition2Panel_3, 'text');
            app.basechordtwistEditField_8.Position = [179 280 45 22];

            % Create noofpanelssemispanwiseEditField_8Label
            app.noofpanelssemispanwiseEditField_8Label = uilabel(app.partition2Panel_3);
            app.noofpanelssemispanwiseEditField_8Label.HorizontalAlignment = 'right';
            app.noofpanelssemispanwiseEditField_8Label.Position = [5 250 160 22];
            app.noofpanelssemispanwiseEditField_8Label.Text = 'no. of panels semi-span wise';

            % Create noofpanelssemispanwiseEditField_8
            app.noofpanelssemispanwiseEditField_8 = uieditfield(app.partition2Panel_3, 'text');
            app.noofpanelssemispanwiseEditField_8.Position = [179 250 45 22];

            % Create spanEditField_8Label
            app.spanEditField_8Label = uilabel(app.partition2Panel_3);
            app.spanEditField_8Label.HorizontalAlignment = 'right';
            app.spanEditField_8Label.Position = [131 221 32 22];
            app.spanEditField_8Label.Text = 'span';

            % Create spanEditField_8
            app.spanEditField_8 = uieditfield(app.partition2Panel_3, 'text');
            app.spanEditField_8.Position = [179 221 45 22];

            % Create taperEditField_8Label
            app.taperEditField_8Label = uilabel(app.partition2Panel_3);
            app.taperEditField_8Label.HorizontalAlignment = 'right';
            app.taperEditField_8Label.Position = [130 191 33 22];
            app.taperEditField_8Label.Text = 'taper';

            % Create taperEditField_8
            app.taperEditField_8 = uieditfield(app.partition2Panel_3, 'text');
            app.taperEditField_8.Position = [179 191 45 22];

            % Create tipchordairfoilEditField_8Label
            app.tipchordairfoilEditField_8Label = uilabel(app.partition2Panel_3);
            app.tipchordairfoilEditField_8Label.HorizontalAlignment = 'right';
            app.tipchordairfoilEditField_8Label.Position = [79 160 84 22];
            app.tipchordairfoilEditField_8Label.Text = 'tip chord airfoil';

            % Create tipchordairfoilEditField_8
            app.tipchordairfoilEditField_8 = uieditfield(app.partition2Panel_3, 'text');
            app.tipchordairfoilEditField_8.Position = [179 160 45 22];

            % Create sweepEditField_8Label
            app.sweepEditField_8Label = uilabel(app.partition2Panel_3);
            app.sweepEditField_8Label.HorizontalAlignment = 'right';
            app.sweepEditField_8Label.Position = [123 128 40 22];
            app.sweepEditField_8Label.Text = 'sweep';

            % Create sweepEditField_8
            app.sweepEditField_8 = uieditfield(app.partition2Panel_3, 'text');
            app.sweepEditField_8.Position = [179 128 45 22];

            % Create outboardtwistEditField_8Label
            app.outboardtwistEditField_8Label = uilabel(app.partition2Panel_3);
            app.outboardtwistEditField_8Label.HorizontalAlignment = 'right';
            app.outboardtwistEditField_8Label.Position = [83 96 80 22];
            app.outboardtwistEditField_8Label.Text = 'outboard twist';

            % Create outboardtwistEditField_8
            app.outboardtwistEditField_8 = uieditfield(app.partition2Panel_3, 'text');
            app.outboardtwistEditField_8.Position = [179 96 45 22];

            % Create meshtypeDropDown_8Label
            app.meshtypeDropDown_8Label = uilabel(app.partition2Panel_3);
            app.meshtypeDropDown_8Label.HorizontalAlignment = 'right';
            app.meshtypeDropDown_8Label.Position = [102 66 61 22];
            app.meshtypeDropDown_8Label.Text = 'mesh type';

            % Create meshtypeDropDown_8
            app.meshtypeDropDown_8 = uidropdown(app.partition2Panel_3);
            app.meshtypeDropDown_8.Items = {'linear', 'span-wise half cosine', 'spanwise half-cosine, chordwise', 'spanwise cosine', 'chordwise cosine'};
            app.meshtypeDropDown_8.Position = [180 66 100 22];
            app.meshtypeDropDown_8.Value = 'linear';

            % Create radiusofcurvatureEditField_8Label
            app.radiusofcurvatureEditField_8Label = uilabel(app.partition2Panel_3);
            app.radiusofcurvatureEditField_8Label.HorizontalAlignment = 'right';
            app.radiusofcurvatureEditField_8Label.Position = [58 6 105 22];
            app.radiusofcurvatureEditField_8Label.Text = 'radius of curvature';

            % Create radiusofcurvatureEditField_8
            app.radiusofcurvatureEditField_8 = uieditfield(app.partition2Panel_3, 'text');
            app.radiusofcurvatureEditField_8.Position = [179 6 45 22];

            % Create curvedDropDown_8Label
            app.curvedDropDown_8Label = uilabel(app.partition2Panel_3);
            app.curvedDropDown_8Label.HorizontalAlignment = 'right';
            app.curvedDropDown_8Label.Position = [123 37 42 22];
            app.curvedDropDown_8Label.Text = 'curved';

            % Create curvedDropDown_8
            app.curvedDropDown_8 = uidropdown(app.partition2Panel_3);
            app.curvedDropDown_8.Items = {'no', 'yes'};
            app.curvedDropDown_8.Position = [180 37 100 22];
            app.curvedDropDown_8.Value = 'no';

            % Create partition3Panel_3
            app.partition3Panel_3 = uipanel(app.Foil3Panel);
            app.partition3Panel_3.Title = 'partition 3';
            app.partition3Panel_3.Visible = 'off';
            app.partition3Panel_3.Position = [54 10 311 492];

            % Create RootchordEditField_9Label
            app.RootchordEditField_9Label = uilabel(app.partition3Panel_3);
            app.RootchordEditField_9Label.HorizontalAlignment = 'right';
            app.RootchordEditField_9Label.Position = [45 438 64 22];
            app.RootchordEditField_9Label.Text = 'Root chord';

            % Create RootchordEditField_9
            app.RootchordEditField_9 = uieditfield(app.partition3Panel_3, 'text');
            app.RootchordEditField_9.HorizontalAlignment = 'right';
            app.RootchordEditField_9.Position = [124 438 100 22];

            % Create BasechordairfoilEditField_9Label
            app.BasechordairfoilEditField_9Label = uilabel(app.partition3Panel_3);
            app.BasechordairfoilEditField_9Label.HorizontalAlignment = 'right';
            app.BasechordairfoilEditField_9Label.Position = [11 401 98 22];
            app.BasechordairfoilEditField_9Label.Text = 'Base chord airfoil';

            % Create BasechordairfoilEditField_9
            app.BasechordairfoilEditField_9 = uieditfield(app.partition3Panel_3, 'text');
            app.BasechordairfoilEditField_9.HorizontalAlignment = 'right';
            app.BasechordairfoilEditField_9.Position = [123 401 100 22];

            % Create noofpanelschordwiseEditField_9Label
            app.noofpanelschordwiseEditField_9Label = uilabel(app.partition3Panel_3);
            app.noofpanelschordwiseEditField_9Label.HorizontalAlignment = 'right';
            app.noofpanelschordwiseEditField_9Label.Position = [28 369 135 22];
            app.noofpanelschordwiseEditField_9Label.Text = 'no. of panels chord wise';

            % Create noofpanelschordwiseEditField_9
            app.noofpanelschordwiseEditField_9 = uieditfield(app.partition3Panel_3, 'text');
            app.noofpanelschordwiseEditField_9.Position = [179 369 45 22];

            % Create dihedralEditField_9Label
            app.dihedralEditField_9Label = uilabel(app.partition3Panel_3);
            app.dihedralEditField_9Label.HorizontalAlignment = 'right';
            app.dihedralEditField_9Label.Position = [115 339 48 22];
            app.dihedralEditField_9Label.Text = 'dihedral';

            % Create dihedralEditField_9
            app.dihedralEditField_9 = uieditfield(app.partition3Panel_3, 'text');
            app.dihedralEditField_9.Position = [179 339 45 22];

            % Create pitchEditField_9Label
            app.pitchEditField_9Label = uilabel(app.partition3Panel_3);
            app.pitchEditField_9Label.HorizontalAlignment = 'right';
            app.pitchEditField_9Label.Position = [132 309 31 22];
            app.pitchEditField_9Label.Text = 'pitch';

            % Create pitchEditField_9
            app.pitchEditField_9 = uieditfield(app.partition3Panel_3, 'text');
            app.pitchEditField_9.Position = [179 309 45 22];

            % Create basechordtwistEditField_9Label
            app.basechordtwistEditField_9Label = uilabel(app.partition3Panel_3);
            app.basechordtwistEditField_9Label.HorizontalAlignment = 'right';
            app.basechordtwistEditField_9Label.Position = [71 280 92 22];
            app.basechordtwistEditField_9Label.Text = 'base chord twist';

            % Create basechordtwistEditField_9
            app.basechordtwistEditField_9 = uieditfield(app.partition3Panel_3, 'text');
            app.basechordtwistEditField_9.Position = [179 280 45 22];

            % Create noofpanelssemispanwiseEditField_9Label
            app.noofpanelssemispanwiseEditField_9Label = uilabel(app.partition3Panel_3);
            app.noofpanelssemispanwiseEditField_9Label.HorizontalAlignment = 'right';
            app.noofpanelssemispanwiseEditField_9Label.Position = [3 250 160 22];
            app.noofpanelssemispanwiseEditField_9Label.Text = 'no. of panels semi-span wise';

            % Create noofpanelssemispanwiseEditField_9
            app.noofpanelssemispanwiseEditField_9 = uieditfield(app.partition3Panel_3, 'text');
            app.noofpanelssemispanwiseEditField_9.Position = [179 250 45 22];

            % Create spanEditField_9Label
            app.spanEditField_9Label = uilabel(app.partition3Panel_3);
            app.spanEditField_9Label.HorizontalAlignment = 'right';
            app.spanEditField_9Label.Position = [131 221 32 22];
            app.spanEditField_9Label.Text = 'span';

            % Create spanEditField_9
            app.spanEditField_9 = uieditfield(app.partition3Panel_3, 'text');
            app.spanEditField_9.Position = [179 221 45 22];

            % Create taperEditField_9Label
            app.taperEditField_9Label = uilabel(app.partition3Panel_3);
            app.taperEditField_9Label.HorizontalAlignment = 'right';
            app.taperEditField_9Label.Position = [130 191 33 22];
            app.taperEditField_9Label.Text = 'taper';

            % Create taperEditField_9
            app.taperEditField_9 = uieditfield(app.partition3Panel_3, 'text');
            app.taperEditField_9.Position = [179 191 45 22];

            % Create tipchordairfoilEditField_9Label
            app.tipchordairfoilEditField_9Label = uilabel(app.partition3Panel_3);
            app.tipchordairfoilEditField_9Label.HorizontalAlignment = 'right';
            app.tipchordairfoilEditField_9Label.Position = [79 160 84 22];
            app.tipchordairfoilEditField_9Label.Text = 'tip chord airfoil';

            % Create tipchordairfoilEditField_9
            app.tipchordairfoilEditField_9 = uieditfield(app.partition3Panel_3, 'text');
            app.tipchordairfoilEditField_9.Position = [179 160 45 22];

            % Create sweepEditField_9Label
            app.sweepEditField_9Label = uilabel(app.partition3Panel_3);
            app.sweepEditField_9Label.HorizontalAlignment = 'right';
            app.sweepEditField_9Label.Position = [123 128 40 22];
            app.sweepEditField_9Label.Text = 'sweep';

            % Create sweepEditField_9
            app.sweepEditField_9 = uieditfield(app.partition3Panel_3, 'text');
            app.sweepEditField_9.Position = [179 128 45 22];

            % Create outboardtwistEditField_9Label
            app.outboardtwistEditField_9Label = uilabel(app.partition3Panel_3);
            app.outboardtwistEditField_9Label.HorizontalAlignment = 'right';
            app.outboardtwistEditField_9Label.Position = [83 96 80 22];
            app.outboardtwistEditField_9Label.Text = 'outboard twist';

            % Create outboardtwistEditField_9
            app.outboardtwistEditField_9 = uieditfield(app.partition3Panel_3, 'text');
            app.outboardtwistEditField_9.Position = [179 96 45 22];

            % Create meshtypeDropDown_9Label
            app.meshtypeDropDown_9Label = uilabel(app.partition3Panel_3);
            app.meshtypeDropDown_9Label.HorizontalAlignment = 'right';
            app.meshtypeDropDown_9Label.Position = [102 66 61 22];
            app.meshtypeDropDown_9Label.Text = 'mesh type';

            % Create meshtypeDropDown_9
            app.meshtypeDropDown_9 = uidropdown(app.partition3Panel_3);
            app.meshtypeDropDown_9.Items = {'linear', 'span-wise half cosine', 'spanwise half-cosine, chordwise', 'spanwise cosine', 'chordwise cosine'};
            app.meshtypeDropDown_9.Position = [180 66 100 22];
            app.meshtypeDropDown_9.Value = 'linear';

            % Create radiusofcurvatureEditField_9Label
            app.radiusofcurvatureEditField_9Label = uilabel(app.partition3Panel_3);
            app.radiusofcurvatureEditField_9Label.HorizontalAlignment = 'right';
            app.radiusofcurvatureEditField_9Label.Position = [58 6 105 22];
            app.radiusofcurvatureEditField_9Label.Text = 'radius of curvature';

            % Create radiusofcurvatureEditField_9
            app.radiusofcurvatureEditField_9 = uieditfield(app.partition3Panel_3, 'text');
            app.radiusofcurvatureEditField_9.Position = [179 6 45 22];

            % Create curvedDropDown_9Label
            app.curvedDropDown_9Label = uilabel(app.partition3Panel_3);
            app.curvedDropDown_9Label.HorizontalAlignment = 'right';
            app.curvedDropDown_9Label.Position = [123 37 42 22];
            app.curvedDropDown_9Label.Text = 'curved';

            % Create curvedDropDown_9
            app.curvedDropDown_9 = uidropdown(app.partition3Panel_3);
            app.curvedDropDown_9.Items = {'no', 'yes'};
            app.curvedDropDown_9.Position = [180 37 100 22];
            app.curvedDropDown_9.Value = 'no';

            % Create APEXxEditField_3Label
            app.APEXxEditField_3Label = uilabel(app.Foil3Panel);
            app.APEXxEditField_3Label.HorizontalAlignment = 'right';
            app.APEXxEditField_3Label.Position = [60 1526 47 22];
            app.APEXxEditField_3Label.Text = 'APEX x';

            % Create APEXxEditField_3
            app.APEXxEditField_3 = uieditfield(app.Foil3Panel, 'numeric');
            app.APEXxEditField_3.Position = [122 1526 29 22];

            % Create yEditField_7Label
            app.yEditField_7Label = uilabel(app.Foil3Panel);
            app.yEditField_7Label.HorizontalAlignment = 'right';
            app.yEditField_7Label.Position = [154 1526 25 22];
            app.yEditField_7Label.Text = 'y';

            % Create yEditField_7
            app.yEditField_7 = uieditfield(app.Foil3Panel, 'numeric');
            app.yEditField_7.Position = [194 1526 29 22];

            % Create zEditField_7Label
            app.zEditField_7Label = uilabel(app.Foil3Panel);
            app.zEditField_7Label.HorizontalAlignment = 'right';
            app.zEditField_7Label.Position = [230 1526 25 22];
            app.zEditField_7Label.Text = 'z';

            % Create zEditField_7
            app.zEditField_7 = uieditfield(app.Foil3Panel, 'numeric');
            app.zEditField_7.Position = [270 1526 29 22];

            % Create noofpartitionsDropDown_3Label
            app.noofpartitionsDropDown_3Label = uilabel(app.Foil3Panel);
            app.noofpartitionsDropDown_3Label.HorizontalAlignment = 'right';
            app.noofpartitionsDropDown_3Label.Position = [56 1559 88 22];
            app.noofpartitionsDropDown_3Label.Text = 'no. of partitions';

            % Create noofpartitionsDropDown_3
            app.noofpartitionsDropDown_3 = uidropdown(app.Foil3Panel);
            app.noofpartitionsDropDown_3.Items = {'1', '2', '3'};
            app.noofpartitionsDropDown_3.ValueChangedFcn = createCallbackFcn(app, @noofpartitionsDropDown_3ValueChanged, true);
            app.noofpartitionsDropDown_3.Position = [151 1559 100 22];
            app.noofpartitionsDropDown_3.Value = '1';

            % Create DoneButton
            app.DoneButton = uibutton(app.UIFigure, 'push');
            app.DoneButton.Position = [792 619 134 43];
            app.DoneButton.Text = 'Done!';
        end
    end

    methods (Access = public)

        % Construct app
        function app = geometry_def

            % Create and configure components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end