.class public Lcom/oppo/music/provider/MediaUtil$AudioThumb_TB;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/provider/MediaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioThumb_TB"
.end annotation


# instance fields
.field public _id:I

.field public audio_id:I

.field public data:Ljava/lang/String;

.field final synthetic this$0:Lcom/oppo/music/provider/MediaUtil;


# direct methods
.method public constructor <init>(Lcom/oppo/music/provider/MediaUtil;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/oppo/music/provider/MediaUtil$AudioThumb_TB;->this$0:Lcom/oppo/music/provider/MediaUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/oppo/music/provider/MediaUtil;IILjava/lang/String;)V
    .locals 0
    .param p2, "_id"    # I
    .param p3, "audio_id"    # I
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/oppo/music/provider/MediaUtil$AudioThumb_TB;->this$0:Lcom/oppo/music/provider/MediaUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p2, p0, Lcom/oppo/music/provider/MediaUtil$AudioThumb_TB;->_id:I

    .line 112
    iput p3, p0, Lcom/oppo/music/provider/MediaUtil$AudioThumb_TB;->audio_id:I

    .line 113
    iput-object p4, p0, Lcom/oppo/music/provider/MediaUtil$AudioThumb_TB;->data:Ljava/lang/String;

    .line 114
    return-void
.end method


# virtual methods
.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/oppo/music/provider/MediaUtil$AudioThumb_TB;->data:Ljava/lang/String;

    .line 117
    return-void
.end method
