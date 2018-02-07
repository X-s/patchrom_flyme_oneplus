.class final Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;
.super Landroid/content/AsyncTaskLoader;
.source "PhysicalKeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyboardLayoutLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mHardKeyboards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p2, "hardKeyboards":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;>;"
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 319
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->mHardKeyboards:Ljava/util/List;

    .line 317
    return-void
.end method

.method private loadInBackground(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;)Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;
    .locals 13
    .param p1, "deviceInfo"    # Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    .prologue
    .line 323
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v6, "keyboardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->getContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 325
    .local v5, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->getContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Landroid/hardware/input/InputManager;

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    .line 326
    .local v2, "im":Landroid/hardware/input/InputManager;
    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    .line 327
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 329
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v11, 0x1

    .line 328
    invoke-virtual {v5, v3, v11}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v10

    .line 330
    .local v10, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 332
    const/4 v8, 0x0

    .line 334
    .local v8, "nullSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v11, p1, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 333
    invoke-virtual {v2, v11, v3, v8}, Landroid/hardware/input/InputManager;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v7

    .line 335
    .local v7, "layout":Landroid/hardware/input/KeyboardLayout;
    new-instance v11, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;

    invoke-direct {v11, v3, v8, v7}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Landroid/hardware/input/KeyboardLayout;)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    .end local v7    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v8    # "nullSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    .line 341
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 342
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 343
    .local v9, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    const-string/jumbo v11, "keyboard"

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 341
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 347
    :cond_2
    iget-object v11, p1, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 346
    invoke-virtual {v2, v11, v3, v9}, Landroid/hardware/input/InputManager;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v7

    .line 348
    .restart local v7    # "layout":Landroid/hardware/input/KeyboardLayout;
    new-instance v11, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;

    invoke-direct {v11, v3, v9, v7}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Landroid/hardware/input/KeyboardLayout;)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 352
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "imi$iterator":Ljava/util/Iterator;
    .end local v7    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_3
    new-instance v11, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;

    invoke-direct {v11, p1, v6}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;-><init>(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;Ljava/util/ArrayList;)V

    return-object v11
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->mHardKeyboards:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 358
    .local v2, "keyboardsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;>;"
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->mHardKeyboards:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "deviceInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    .line 359
    .local v0, "deviceInfo":Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->loadInBackground(Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;)Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    .end local v0    # "deviceInfo":Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;
    :cond_0
    return-object v2
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 366
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 367
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->forceLoad()V

    .line 365
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 372
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 373
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->cancelLoad()Z

    .line 371
    return-void
.end method
