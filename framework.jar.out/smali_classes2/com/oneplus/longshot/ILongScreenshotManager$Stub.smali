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

.field static final TRANSACTION_registerLongshotListener:I = 0x2

.field static final TRANSACTION_stopLongshot:I = 0x8

.field static final TRANSACTION_takeLongshot:I = 0x1

.field static final TRANSACTION_unregisterLongshotListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p0, p0, v0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/longshot/ILongScreenshotManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/longshot/ILongScreenshotManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/oneplus/longshot/ILongScreenshotManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/oneplus/longshot/ILongScreenshotManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 47
    :sswitch_0
    const-string v4, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v5, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 56
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 57
    .local v1, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->takeLongshot(ZZ)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :cond_0
    move v0, v4

    .line 54
    goto :goto_1

    .restart local v0    # "_arg0":Z
    :cond_1
    move v1, v4

    .line 56
    goto :goto_2

    .line 63
    .end local v0    # "_arg0":Z
    :sswitch_2
    const-string v4, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/longshot/ILongScreenshotListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/longshot/ILongScreenshotListener;

    move-result-object v0

    .line 66
    .local v0, "_arg0":Lcom/oneplus/longshot/ILongScreenshotListener;
    invoke-virtual {p0, v0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->registerLongshotListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":Lcom/oneplus/longshot/ILongScreenshotListener;
    :sswitch_3
    const-string v4, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/longshot/ILongScreenshotListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/longshot/ILongScreenshotListener;

    move-result-object v0

    .line 75
    .restart local v0    # "_arg0":Lcom/oneplus/longshot/ILongScreenshotListener;
    invoke-virtual {p0, v0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->unregisterLongshotListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    .end local v0    # "_arg0":Lcom/oneplus/longshot/ILongScreenshotListener;
    :sswitch_4
    const-string v5, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 84
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->notifyLongshotScroll(Z)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_2
    move v0, v4

    .line 83
    goto :goto_3

    .line 90
    :sswitch_5
    const-string v5, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->isLongshotMoveState()Z

    move-result v2

    .line 92
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v2, :cond_3

    move v4, v3

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v2    # "_result":Z
    :sswitch_6
    const-string v5, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->isLongshotHandleState()Z

    move-result v2

    .line 100
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v2, :cond_4

    move v4, v3

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 106
    .end local v2    # "_result":Z
    :sswitch_7
    const-string v5, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->isLongshotMode()Z

    move-result v2

    .line 108
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v2, :cond_5

    move v4, v3

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v2    # "_result":Z
    :sswitch_8
    const-string v4, "com.oneplus.longshot.ILongScreenshotManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->stopLongshot()V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 43
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
