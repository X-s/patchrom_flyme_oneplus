.class public abstract Lcom/oneplus/longshot/ILongScreenshotManager$Stub;
.super Landroid/os/Binder;
.source "ILongScreenshotManager.java"

# interfaces
.implements Lcom/oneplus/longshot/ILongScreenshotManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/longshot/ILongScreenshotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/longshot/ILongScreenshotManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.longshot.ILongScreenshotManager"

.field static final TRANSACTION_isLongshotHandleState:I = 0x6

.field static final TRANSACTION_isLongshotMode:I = 0x7

.field static final TRANSACTION_isLongshotMoveState:I = 0x5

.field static final TRANSACTION_notifyLongshotScroll:I = 0x4

.field static final TRANSACTION_notifyScrollViewTop:I = 0x9

.field static final TRANSACTION_registerLongshotListener:I = 0x2

.field static final TRANSACTION_stopLongshot:I = 0x8

.field static final TRANSACTION_takeLongshot:I = 0x1

.field static final TRANSACTION_unregisterLongshotListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/longshot/ILongScreenshotManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/longshot/ILongScreenshotManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/oneplus/longshot/ILongScreenshotManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/oneplus/longshot/ILongScreenshotManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 47
    :sswitch_0
    const-string/jumbo v6, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v5

    .line 52
    :sswitch_1
    const-string/jumbo v6, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    .line 56
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    .line 57
    .local v3, "_arg1":Z
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->takeLongshot(ZZ)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    return v5

    .line 54
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_0

    .line 63
    .end local v2    # "_arg0":Z
    :sswitch_2
    const-string/jumbo v6, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/longshot/ILongScreenshotListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/longshot/ILongScreenshotListener;

    move-result-object v1

    .line 66
    .local v1, "_arg0":Lcom/oneplus/longshot/ILongScreenshotListener;
    invoke-virtual {p0, v1}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->registerLongshotListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v5

    .line 72
    .end local v1    # "_arg0":Lcom/oneplus/longshot/ILongScreenshotListener;
    :sswitch_3
    const-string/jumbo v6, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/longshot/ILongScreenshotListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/longshot/ILongScreenshotListener;

    move-result-object v1

    .line 75
    .restart local v1    # "_arg0":Lcom/oneplus/longshot/ILongScreenshotListener;
    invoke-virtual {p0, v1}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->unregisterLongshotListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v5

    .line 81
    .end local v1    # "_arg0":Lcom/oneplus/longshot/ILongScreenshotListener;
    :sswitch_4
    const-string/jumbo v6, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v2, v5

    .line 84
    .local v2, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v2}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->notifyLongshotScroll(Z)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v5

    .end local v2    # "_arg0":Z
    :cond_2
    move v2, v3

    .line 83
    goto :goto_1

    .line 90
    :sswitch_5
    const-string/jumbo v6, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->isLongshotMoveState()Z

    move-result v4

    .line 92
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v4, :cond_3

    move v3, v5

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v5

    .line 98
    .end local v4    # "_result":Z
    :sswitch_6
    const-string/jumbo v6, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->isLongshotHandleState()Z

    move-result v4

    .line 100
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v4, :cond_4

    move v3, v5

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return v5

    .line 106
    .end local v4    # "_result":Z
    :sswitch_7
    const-string/jumbo v6, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->isLongshotMode()Z

    move-result v4

    .line 108
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v4, :cond_5

    move v3, v5

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return v5

    .line 114
    .end local v4    # "_result":Z
    :sswitch_8
    const-string/jumbo v6, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->stopLongshot()V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    return v5

    .line 121
    :sswitch_9
    const-string/jumbo v6, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->notifyScrollViewTop(I)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    return v5

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
