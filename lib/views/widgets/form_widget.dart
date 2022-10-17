import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final TextEditingController textController1 = TextEditingController();
  final TextEditingController textController2 = TextEditingController();

  late DateTime datePicked;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 20, 16, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Add Task',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Fill out the details below to add a new task.',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
            child: TextFormField(
              controller: textController1,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Task Name',
                labelStyle: FlutterFlowTheme.of(context).subtitle2,
                hintText: 'Enter your task here....',
                hintStyle: FlutterFlowTheme.of(context).subtitle2,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Theme.of(context).backgroundColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
            child: TextFormField(
              controller: textController2,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Details',
                labelStyle: FlutterFlowTheme.of(context).subtitle2,
                hintText: 'Enter a description here...',
                hintStyle: FlutterFlowTheme.of(context).subtitle2,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).primaryBackground,
              ),
              style: FlutterFlowTheme.of(context).bodyText1,
              textAlign: TextAlign.start,
              maxLines: 3,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Text("Text"),
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Text("Text"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
