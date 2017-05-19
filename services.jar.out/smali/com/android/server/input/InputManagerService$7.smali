.class Lcom/android/server/input/InputManagerService$7;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHasSeenDeviceSpecificLayout:Z

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$7;->this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$7;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    iput-object p3, p0, Lcom/android/server/input/InputManagerService$7;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .prologue
    const/4 v2, -0x1

    .line 1025
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1027
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService$7;->mHasSeenDeviceSpecificLayout:Z

    if-nez v0, :cond_0

    .line 1028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$7;->mHasSeenDeviceSpecificLayout:Z

    .line 1029
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$7;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$7;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    :cond_1
    :goto_0
    return-void

    .line 1032
    :cond_2
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService$7;->mHasSeenDeviceSpecificLayout:Z

    if-nez v0, :cond_1

    .line 1034
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$7;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
