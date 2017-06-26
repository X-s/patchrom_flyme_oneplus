.class public Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;
.super Landroid/app/DialogFragment;
.source "KeyboardLayoutDialogFragment.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;,
        Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;,
        Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;,
        Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/DialogFragment;",
        "Landroid/hardware/input/InputManager$InputDeviceListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_INPUT_DEVICE_IDENTIFIER:Ljava/lang/String; = "inputDeviceIdentifier"


# instance fields
.field private mAdapter:Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceId:I

.field private mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 1
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    .line 62
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->onKeyboardLayoutClicked(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->onSetupLayoutsButtonClicked()V

    return-void
.end method

.method private onKeyboardLayoutClicked(I)V
    .locals 4
    .param p1, "which"    # I

    .prologue
    .line 157
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    .line 159
    .local v0, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    if-eqz v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManager;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 165
    .end local v0    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_1
    return-void
.end method

.method private onSetupLayoutsButtonClicked()V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;

    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-interface {v0, v1}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;->onSetupKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 148
    return-void
.end method

.method private updateSwitchHintVisibility()V
    .locals 4

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Lcom/oneplus/app/OPAlertDialog;

    .line 210
    .local v1, "dialog":Lcom/oneplus/app/OPAlertDialog;
    if-eqz v1, :cond_0

    .line 211
    const v2, 0x10202fa

    invoke-virtual {v1, v2}, Lcom/oneplus/app/OPAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, "customPanel":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 214
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .end local v0    # "customPanel":Landroid/view/View;
    :cond_0
    return-void

    .line 214
    .restart local v0    # "customPanel":Landroid/view/View;
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 152
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "layout"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, "context":Landroid/content/Context;
    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    .line 71
    new-instance v1, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-direct {v1, v0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    .line 72
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 143
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    const-string v0, "inputDeviceIdentifier"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 83
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 94
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 95
    .local v2, "inflater":Landroid/view/LayoutInflater;
    new-instance v3, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-direct {v3, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0838

    invoke-virtual {v3, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0839

    new-instance v5, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$2;-><init>(Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    const/4 v5, -0x1

    new-instance v6, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$1;-><init>(Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/oneplus/app/OPAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f04006e

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    .line 112
    .local v0, "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->updateSwitchHintVisibility()V

    .line 113
    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;-><init>(Landroid/content/Context;Landroid/hardware/input/InputDeviceIdentifier;)V

    return-object v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 192
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .prologue
    .line 196
    iget v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    if-ne p1, v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 199
    :cond_0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 203
    iget v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    if-ne p1, v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 206
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;)V
    .locals 4
    .param p2, "data"    # Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
            ">;",
            "Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
            ")V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;>;"
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->clear()V

    .line 175
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    iget-object v2, p2, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->addAll(Ljava/util/Collection;)V

    .line 176
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    iget v2, p2, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->current:I

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->setCheckedItem(I)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/oneplus/app/OPAlertDialog;

    .line 178
    .local v0, "dialog":Lcom/oneplus/app/OPAlertDialog;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget v2, p2, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->current:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->updateSwitchHintVisibility()V

    .line 182
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p2, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->onLoadFinished(Landroid/content/Loader;Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;>;"
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->clear()V

    .line 187
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->updateSwitchHintVisibility()V

    .line 188
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    .line 136
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 137
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 122
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object v0

    .line 124
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 88
    const-string v0, "inputDeviceIdentifier"

    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 89
    return-void
.end method
