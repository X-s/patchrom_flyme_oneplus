.class public Lcom/android/settings_exlib/drawer/ProfileSelectDialog;
.super Landroid/app/DialogFragment;
.source "ProfileSelectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final ARG_SELECTED_TILE:Ljava/lang/String; = "selectedTile"


# instance fields
.field private mSelectedTile:Lcom/android/settings_exlib/drawer/Tile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Lcom/android/settings_exlib/drawer/Tile;)V
    .locals 3
    .param p0, "manager"    # Landroid/app/FragmentManager;
    .param p1, "tile"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    .line 37
    new-instance v1, Lcom/android/settings_exlib/drawer/ProfileSelectDialog;

    invoke-direct {v1}, Lcom/android/settings_exlib/drawer/ProfileSelectDialog;-><init>()V

    .line 38
    .local v1, "dialog":Lcom/android/settings_exlib/drawer/ProfileSelectDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "selectedTile"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    invoke-virtual {v1, v0}, Lcom/android/settings_exlib/drawer/ProfileSelectDialog;->setArguments(Landroid/os/Bundle;)V

    .line 41
    const-string/jumbo v2, "select_profile"

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_exlib/drawer/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/settings_exlib/drawer/ProfileSelectDialog;->mSelectedTile:Lcom/android/settings_exlib/drawer/Tile;

    iget-object v1, v1, Lcom/android/settings_exlib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 66
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/settings_exlib/drawer/ProfileSelectDialog;->mSelectedTile:Lcom/android/settings_exlib/drawer/Tile;

    iget-object v1, v1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    const-string/jumbo v2, "show_drawer_menu"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/android/settings_exlib/drawer/ProfileSelectDialog;->mSelectedTile:Lcom/android/settings_exlib/drawer/Tile;

    iget-object v1, v1, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/ProfileSelectDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_exlib/drawer/ProfileSelectDialog;->mSelectedTile:Lcom/android/settings_exlib/drawer/Tile;

    iget-object v2, v2, Lcom/android/settings_exlib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/ProfileSelectDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    invoke-virtual {v1}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->onProfileTileOpen()V

    .line 63
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/ProfileSelectDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "selectedTile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/drawer/Tile;

    iput-object v0, p0, Lcom/android/settings_exlib/drawer/ProfileSelectDialog;->mSelectedTile:Lcom/android/settings_exlib/drawer/Tile;

    .line 45
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings_exlib/drawer/ProfileSelectDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 53
    .local v2, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 55
    iget-object v4, p0, Lcom/android/settings_exlib/drawer/ProfileSelectDialog;->mSelectedTile:Lcom/android/settings_exlib/drawer/Tile;

    iget-object v4, v4, Lcom/android/settings_exlib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    .line 54
    invoke-static {v3, v2, v4}, Lcom/android/settings_exlib/drawer/UserAdapter;->createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settings_exlib/drawer/UserAdapter;

    move-result-object v0

    .line 56
    .local v0, "adapter":Lcom/android/settings_exlib/drawer/UserAdapter;
    sget v3, Lcom/android/settings_exlib/R$string;->choose_profile:I

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
