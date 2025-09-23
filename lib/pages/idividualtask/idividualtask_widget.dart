import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'idividualtask_model.dart';
export 'idividualtask_model.dart';

class IdividualtaskWidget extends StatefulWidget {
  const IdividualtaskWidget({
    super.key,
    required this.task,
    required this.checkaction,
  });

  final TasksRecord? task;
  final Future Function()? checkaction;

  @override
  State<IdividualtaskWidget> createState() => _IdividualtaskWidgetState();
}

class _IdividualtaskWidgetState extends State<IdividualtaskWidget> {
  late IdividualtaskModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IdividualtaskModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Theme(
                data: ThemeData(
                  checkboxTheme: CheckboxThemeData(
                    shape: CircleBorder(),
                  ),
                  unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                ),
                child: Checkbox(
                  value: _model.checkboxValue ??= widget.task!.completed,
                  onChanged: widget.task!.completed
                      ? null
                      : (newValue) async {
                          safeSetState(() => _model.checkboxValue = newValue!);
                          if (newValue!) {
                            await widget.checkaction?.call();
                          }
                        },
                  side: (FlutterFlowTheme.of(context).alternate != null)
                      ? BorderSide(
                          width: 2,
                          color: FlutterFlowTheme.of(context).alternate,
                        )
                      : null,
                  activeColor: FlutterFlowTheme.of(context).green,
                  checkColor: widget.task!.completed
                      ? null
                      : FlutterFlowTheme.of(context).info,
                ),
              ),
              Flexible(
                child: Text(
                  valueOrDefault<String>(
                    widget.task?.title,
                    'title',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
