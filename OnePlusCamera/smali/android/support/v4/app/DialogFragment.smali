.class public Landroid/support/v4/app/DialogFragment;
.super Landroid/support/v4/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/DialogFragment$DialogStyle;
    }
.end annotation


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Landroid/app/Dialog;

.field mDismissed:Z

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 84
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    .line 85
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    .line 86
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    .line 87
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    const/4 v0, -0x1

    .line 88
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    .line 96
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    .line 167
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    .line 177
    return-void
.end method

.method dismissInternal(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    if-nez v0, :cond_0

    .line 183
    iput-boolean v2, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 184
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 185
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 189
    :goto_0
    iput-boolean v2, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 190
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    if-gez v0, :cond_2

    .line 195
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 196
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 197
    if-nez p1, :cond_3

    .line 200
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 203
    :goto_1
    return-void

    .line 181
    :cond_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 187
    iput-object v3, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V

    const/4 v0, -0x1

    .line 193
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    goto :goto_1

    .line 198
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 303
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 308
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    packed-switch v0, :pswitch_data_0

    .line 318
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 322
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0

    .line 304
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    .line 310
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 316
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_0

    .line 319
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getShowsDialog()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    return v0
.end method

.method public getTheme()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 368
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 370
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 375
    if-nez v0, :cond_2

    .line 381
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 382
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 383
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 384
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 385
    if-nez p1, :cond_4

    .line 391
    :cond_0
    :goto_1
    return-void

    .line 371
    :cond_1
    return-void

    .line 376
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 379
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 377
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "DialogFragment can not be attached to a container view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string/jumbo v0, "android:savedDialogState"

    .line 386
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_0

    .line 388
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 265
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 266
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    if-eqz v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 286
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 288
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mContainerId:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    .line 290
    if-nez p1, :cond_1

    .line 298
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 288
    goto :goto_0

    :cond_1
    const-string/jumbo v0, "android:style"

    .line 291
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    const-string/jumbo v0, "android:theme"

    .line 292
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    const-string/jumbo v0, "android:cancelable"

    .line 293
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    const-string/jumbo v0, "android:showsDialog"

    .line 294
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    const-string/jumbo v0, "android:backStackId"

    const/4 v1, -0x1

    .line 295
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 350
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 441
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 442
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 450
    :goto_0
    return-void

    .line 446
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 447
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 448
    iput-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 275
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 276
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    if-nez v0, :cond_0

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    if-eqz v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 404
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 405
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    if-nez v0, :cond_2

    .line 414
    :goto_1
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    if-nez v0, :cond_3

    .line 417
    :goto_2
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    if-eqz v0, :cond_4

    .line 420
    :goto_3
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-eqz v0, :cond_5

    .line 423
    :goto_4
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 426
    :goto_5
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_0

    const-string/jumbo v1, "android:savedDialogState"

    .line 408
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "android:style"

    .line 412
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "android:theme"

    .line 415
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "android:cancelable"

    .line 418
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_5
    const-string/jumbo v0, "android:showsDialog"

    .line 421
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_6
    const-string/jumbo v0, "android:backStackId"

    .line 424
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 395
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 396
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 397
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 398
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 431
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    goto :goto_0
.end method

.method public setCancelable(Z)V
    .locals 1

    .prologue
    .line 224
    iput-boolean p1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    .line 225
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0
.end method

.method public setShowsDialog(Z)V
    .locals 0

    .prologue
    .line 253
    iput-boolean p1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    .line 254
    return-void
.end method

.method public setStyle(II)V
    .locals 2

    .prologue
    .line 113
    iput p1, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    .line 114
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const v0, 0x1030059

    .line 115
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    .line 117
    :goto_0
    if-nez p2, :cond_2

    .line 120
    :goto_1
    return-void

    .line 114
    :cond_1
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 118
    :cond_2
    iput p2, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    goto :goto_1
.end method

.method public show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 153
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 154
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 155
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    .line 156
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    return v0
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 136
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 138
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 139
    return-void
.end method
