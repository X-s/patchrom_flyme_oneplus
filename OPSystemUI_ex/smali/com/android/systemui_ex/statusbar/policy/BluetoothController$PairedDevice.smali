.class public final Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;
.super Ljava/lang/Object;
.source "BluetoothController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/BluetoothController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PairedDevice"
.end annotation


# static fields
.field public static STATE_CONNECTED:I

.field public static STATE_CONNECTING:I

.field public static STATE_DISCONNECTED:I

.field public static STATE_DISCONNECTING:I


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public state:I

.field public tag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTED:I

    .line 42
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTING:I

    .line 43
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTED:I

    .line 44
    const/4 v0, 0x3

    sput v0, Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget v0, Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothController$PairedDevice;->state:I

    return-void
.end method
