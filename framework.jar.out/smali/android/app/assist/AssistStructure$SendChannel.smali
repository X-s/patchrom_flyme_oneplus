.class final Landroid/app/assist/AssistStructure$SendChannel;
.super Landroid/os/Binder;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SendChannel"
.end annotation


# instance fields
.field volatile mAssistStructure:Landroid/app/assist/AssistStructure;


# direct methods
.method constructor <init>(Landroid/app/assist/AssistStructure;)V
    .locals 0
    .param p1, "as"    # Landroid/app/assist/AssistStructure;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/app/assist/AssistStructure$SendChannel;->mAssistStructure:Landroid/app/assist/AssistStructure;

    .line 62
    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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
    const/4 v3, 0x1

    .line 66
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 67
    iget-object v0, p0, Landroid/app/assist/AssistStructure$SendChannel;->mAssistStructure:Landroid/app/assist/AssistStructure;

    .line 68
    .local v0, "as":Landroid/app/assist/AssistStructure;
    if-nez v0, :cond_0

    .line 93
    .end local v0    # "as":Landroid/app/assist/AssistStructure;
    :goto_0
    return v3

    .line 72
    .restart local v0    # "as":Landroid/app/assist/AssistStructure;
    :cond_0
    const-string v4, "android.app.AssistStructure"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 76
    .local v1, "token":Landroid/os/IBinder;
    if-eqz v1, :cond_2

    .line 78
    instance-of v4, v1, Landroid/app/assist/AssistStructure$ParcelTransferWriter;

    if-eqz v4, :cond_1

    move-object v2, v1

    .line 79
    check-cast v2, Landroid/app/assist/AssistStructure$ParcelTransferWriter;

    .line 80
    .local v2, "xfer":Landroid/app/assist/AssistStructure$ParcelTransferWriter;
    invoke-virtual {v2, v0, p3}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeToParcel(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)V

    goto :goto_0

    .line 83
    .end local v2    # "xfer":Landroid/app/assist/AssistStructure$ParcelTransferWriter;
    :cond_1
    const-string v4, "AssistStructure"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caller supplied bad token type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_2
    new-instance v2, Landroid/app/assist/AssistStructure$ParcelTransferWriter;

    invoke-direct {v2, v0, p3}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;-><init>(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)V

    .line 89
    .restart local v2    # "xfer":Landroid/app/assist/AssistStructure$ParcelTransferWriter;
    invoke-virtual {v2, v0, p3}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeToParcel(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)V

    goto :goto_0

    .line 93
    .end local v0    # "as":Landroid/app/assist/AssistStructure;
    .end local v1    # "token":Landroid/os/IBinder;
    .end local v2    # "xfer":Landroid/app/assist/AssistStructure$ParcelTransferWriter;
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    goto :goto_0
.end method
