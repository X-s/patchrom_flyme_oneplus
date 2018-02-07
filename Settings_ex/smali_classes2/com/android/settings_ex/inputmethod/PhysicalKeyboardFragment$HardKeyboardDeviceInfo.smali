.class public final Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HardKeyboardDeviceInfo"
.end annotation


# instance fields
.field public final mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field public final mDeviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "deviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    if-eqz p1, :cond_0

    .end local p1    # "deviceName":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 387
    iput-object p2, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 385
    return-void

    .line 386
    .restart local p1    # "deviceName":Ljava/lang/String;
    :cond_0
    const-string/jumbo p1, ""

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 392
    if-ne p1, p0, :cond_0

    return v4

    .line 393
    :cond_0
    if-nez p1, :cond_1

    return v3

    .line 395
    :cond_1
    instance-of v1, p1, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    if-nez v1, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    .line 397
    check-cast v0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    .line 398
    .local v0, "that":Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 399
    return v3

    .line 401
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v1

    iget-object v2, v0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 402
    return v3

    .line 404
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v1

    iget-object v2, v0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 405
    return v3

    .line 407
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 408
    iget-object v2, v0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 409
    return v3

    .line 412
    :cond_6
    return v4
.end method
