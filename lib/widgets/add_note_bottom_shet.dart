import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/cubits/cubit/notes_state.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteBottomShet extends StatefulWidget {
  const AddNoteBottomShet({super.key});

  @override
  State<AddNoteBottomShet> createState() => _AddNoteBottomShetState();
}

class _AddNoteBottomShetState extends State<AddNoteBottomShet> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNotesCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteLoading) {
              isLoading = true;
            } else if (state is AddNoteSuccess) {
              Navigator.pop(context);
            } else if (state is AddNoteFailer) {
              print('faild ${state.errorMassage}');
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: isLoading,
              child: const SingleChildScrollView(child: AddNoteForm()),
            );
          },
        ),
      ),
    );
  }
}
