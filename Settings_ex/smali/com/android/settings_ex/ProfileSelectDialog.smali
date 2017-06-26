.class public Lcom/android/settings_ex/ProfileSelectDialog;
.super Landroid/app/DialogFragment;
.source "ProfileSelectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final ARG_SELECTED_TILE:Ljava/lang/String; = "selectedTile"


# instance fields
.field private mSelectedTile:Lcom/android/settings_ex/dashboard/DashboardTile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Lcom/android/settings_ex/dashboard/DashboardTile;)V
    .locals 3
    .param p0, "manager"    # Landroid/app/FragmentManager;
    .param p1, "tile"    # Lcom/android/settings_ex/dashboard/DashboardTile;

    .prologue
    .line 39
    new-instance v1, Lcom/android/settings_ex/ProfileSelectDialog;

    invoke-direct {v1}, Lcom/android/settings_ex/ProfileSelectDialog;-><init>()V

    .line 40
    .local v1, "dialog":Lcom/android/settings_ex/ProfileSelectDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "selectedTile"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/ProfileSelectDialog;->setArguments(Landroid/os/Bundle;)V

    .line 43
    const-string v2, "select_profile"

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/settings_ex/ProfileSelectDialog;->mSelectedTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 67
    .local v0, "user":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/settings_ex/ProfileSelectDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ProfileSelectDialog;->mSelectedTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v2, v2, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/ProfileSelectDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selectedTile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/dashboard/DashboardTile;

    iput-object v0, p0, Lcom/android/settings_ex/ProfileSelectDialog;->mSelectedTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    .line 50
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ex/ProfileSelectDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 55
    .local v2, "context":Landroid/content/Context;
    new-instance v1, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-direct {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    .local v1, "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/ProfileSelectDialog;->mSelectedTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v4, v4, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    invoke-static {v3, v2, v4}, Lcom/android/settings_ex/Utils;->createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settings_ex/UserAdapter;

    move-result-object v0

    .line 58
    .local v0, "adapter":Lcom/android/settings_ex/UserAdapter;
    const v3, 0x7f0c0d21

    invoke-virtual {v1, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 61
    invoke-virtual {v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v3

    return-object v3
.end method
