.class final Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Callbacks;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Callbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;",
        ">;>;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mHardKeyboards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mPhysicalKeyboardFragment:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "physicalKeyboardFragment"    # Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p3, "hardKeyboards":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Callbacks;->mContext:Landroid/content/Context;

    .line 292
    iput-object p2, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Callbacks;->mPhysicalKeyboardFragment:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;

    .line 293
    iput-object p3, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Callbacks;->mHardKeyboards:Ljava/util/List;

    .line 290
    return-void
.end method


# virtual methods
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
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;

    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Callbacks;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Callbacks;->mHardKeyboards:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 302
    check-cast p2, Ljava/util/List;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Callbacks;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;>;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;>;"
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Callbacks;->mPhysicalKeyboardFragment:Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;->onLoadFinishedInternal(ILjava/util/List;)V

    .line 302
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;>;>;"
    return-void
.end method
