.class public Lcom/android/settings_ex/ApnEditor$ErrorDialog;
.super Landroid/app/DialogFragment;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1014
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static showError(Lcom/android/settings_ex/ApnEditor;)V
    .locals 3
    .param p0, "editor"    # Lcom/android/settings_ex/ApnEditor;

    .prologue
    .line 1017
    new-instance v0, Lcom/android/settings_ex/ApnEditor$ErrorDialog;

    invoke-direct {v0}, Lcom/android/settings_ex/ApnEditor$ErrorDialog;-><init>()V

    .line 1018
    .local v0, "dialog":Lcom/android/settings_ex/ApnEditor$ErrorDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/ApnEditor$ErrorDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1019
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "error"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/ApnEditor$ErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1016
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1024
    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ErrorDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/ApnEditor;

    invoke-static {v1}, Lcom/android/settings_ex/ApnEditor;->-wrap0(Lcom/android/settings_ex/ApnEditor;)Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/ApnEditor$ErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1027
    const v2, 0x7f0e0905

    .line 1026
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1028
    const v2, 0x104000a

    const/4 v3, 0x0

    .line 1026
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
