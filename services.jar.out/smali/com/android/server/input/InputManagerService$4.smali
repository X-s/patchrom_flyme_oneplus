.class Lcom/android/server/input/InputManagerService$4;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$d:Landroid/view/InputDevice;

.field final synthetic val$layouts:Ljava/util/List;

.field final synthetic val$systemLocale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$4;->val$d:Landroid/view/InputDevice;

    iput-object p3, p0, Lcom/android/server/input/InputManagerService$4;->val$systemLocale:Ljava/util/Locale;

    iput-object p4, p0, Lcom/android/server/input/InputManagerService$4;->val$layouts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .prologue
    .line 766
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/input/InputManagerService$4;->val$d:Landroid/view/InputDevice;

    invoke-virtual {v5}, Landroid/view/InputDevice;->getVendorId()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/input/InputManagerService$4;->val$d:Landroid/view/InputDevice;

    invoke-virtual {v5}, Landroid/view/InputDevice;->getProductId()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getLocales()[Ljava/util/Locale;

    move-result-object v0

    .local v0, "arr$":[Ljava/util/Locale;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 771
    .local v2, "l":Ljava/util/Locale;
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$4;->val$systemLocale:Ljava/util/Locale;

    # invokes: Lcom/android/server/input/InputManagerService;->isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z
    invoke-static {v4, v2}, Lcom/android/server/input/InputManagerService;->access$400(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 772
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$4;->val$layouts:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 770
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
