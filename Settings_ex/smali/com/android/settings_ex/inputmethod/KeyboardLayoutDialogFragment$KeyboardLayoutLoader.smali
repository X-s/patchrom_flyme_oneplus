.class final Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;
.super Landroid/content/AsyncTaskLoader;
.source "KeyboardLayoutDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyboardLayoutLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 299
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 300
    iput-object p2, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 301
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;
    .locals 13

    .prologue
    .line 305
    new-instance v8, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;

    invoke-direct {v8}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;-><init>()V

    .line 306
    .local v8, "keyboards":Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "input"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManager;

    .line 307
    .local v4, "im":Landroid/hardware/input/InputManager;
    iget-object v11, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v4, v11}, Landroid/hardware/input/InputManager;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v7

    .line 309
    .local v7, "keyboardLayoutDescriptors":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v9, :cond_1

    aget-object v6, v0, v3

    .line 310
    .local v6, "keyboardLayoutDescriptor":Ljava/lang/String;
    invoke-virtual {v4, v6}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v5

    .line 311
    .local v5, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    if-eqz v5, :cond_0

    .line 312
    iget-object v11, v8, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 315
    .end local v5    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v6    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_1
    iget-object v11, v8, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 317
    iget-object v11, p0, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v4, v11}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "currentKeyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 320
    iget-object v11, v8, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 321
    .local v10, "numKeyboardLayouts":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v10, :cond_2

    .line 322
    iget-object v11, v8, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v11}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 324
    iput v2, v8, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->current:I

    .line 330
    .end local v2    # "i":I
    .end local v10    # "numKeyboardLayouts":I
    :cond_2
    iget-object v11, v8, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 331
    iget-object v11, v8, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    const/4 v11, 0x0

    iput v11, v8, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->current:I

    .line 334
    :cond_3
    return-object v8

    .line 321
    .restart local v2    # "i":I
    .restart local v10    # "numKeyboardLayouts":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->loadInBackground()Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$Keyboards;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 339
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 340
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->forceLoad()V

    .line 341
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 345
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 346
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->cancelLoad()Z

    .line 347
    return-void
.end method
