.class public abstract Lcom/oneplus/longshot/ILongScreenshot$Stub;
.super Landroid/os/Binder;
.source "ILongScreenshot.java"

# interfaces
.implements Lcom/oneplus/longshot/ILongScreenshot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/longshot/ILongScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/longshot/ILongScreenshot$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.longshot.ILongScreenshot"

.field static final TRANSACTION_isHandleState:I = 0x4

.field static final TRANSACTION_isMoveState:I = 0x3

.field static final TRANSACTION_notifyScroll:I = 0x2

.field static final TRANSACTION_notifyScrollViewTop:I = 0x6

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_stopLongshot:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "com.oneplus.longshot.ILongScreenshot"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/longshot/ILongScreenshot;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "com.oneplus.longshot.ILongScreenshot"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/longshot/ILongScreenshot;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/oneplus/longshot/ILongScreenshot;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/oneplus/longshot/ILongScreenshot$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oneplus/longshot/ILongScreenshot$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 46
    :sswitch_0
    const-string/jumbo v5, "com.oneplus.longshot.ILongScreenshot"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v4

    .line 51
    :sswitch_1
    const-string/jumbo v5, "com.oneplus.longshot.ILongScreenshot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/longshot/ILongScreenshotCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/longshot/ILongScreenshotCallback;

    move-result-object v1

    .line 54
    .local v1, "_arg0":Lcom/oneplus/longshot/ILongScreenshotCallback;
    invoke-virtual {p0, v1}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->start(Lcom/oneplus/longshot/ILongScreenshotCallback;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    return v4

    .line 60
    .end local v1    # "_arg0":Lcom/oneplus/longshot/ILongScreenshotCallback;
    :sswitch_2
    const-string/jumbo v5, "com.oneplus.longshot.ILongScreenshot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    .line 63
    .local v2, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v2}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->notifyScroll(Z)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    return v4

    .line 69
    .end local v2    # "_arg0":Z
    :sswitch_3
    const-string/jumbo v5, "com.oneplus.longshot.ILongScreenshot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->isMoveState()Z

    move-result v3

    .line 71
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v3, :cond_1

    move v2, v4

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    return v4

    .line 77
    .end local v3    # "_result":Z
    :sswitch_4
    const-string/jumbo v5, "com.oneplus.longshot.ILongScreenshot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->isHandleState()Z

    move-result v3

    .line 79
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v3, :cond_2

    move v2, v4

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return v4

    .line 85
    .end local v3    # "_result":Z
    :sswitch_5
    const-string/jumbo v5, "com.oneplus.longshot.ILongScreenshot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->stopLongshot()V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    return v4

    .line 92
    :sswitch_6
    const-string/jumbo v5, "com.oneplus.longshot.ILongScreenshot"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->notifyScrollViewTop(I)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    return v4

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
