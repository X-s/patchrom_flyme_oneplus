.class public Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;
.super Ljava/lang/Object;
.source "DcSwitchAsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectInfo"
.end annotation


# instance fields
.field final request:Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

.field final responseMessage:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "req"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;->request:Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 107
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;->responseMessage:Landroid/os/Message;

    .line 108
    return-void
.end method
