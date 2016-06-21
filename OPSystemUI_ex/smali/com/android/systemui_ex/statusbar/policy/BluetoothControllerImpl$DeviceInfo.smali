.class Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceInfo"
.end annotation


# instance fields
.field bonded:Z

.field connectedProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field connectionStateIndex:I

.field profileStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionStateIndex:I

    .line 569
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectedProfiles:Landroid/util/SparseArray;

    .line 570
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->profileStates:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$1;

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$DeviceInfo;-><init>()V

    return-void
.end method
