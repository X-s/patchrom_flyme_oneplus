.class public Lcom/oppo/music/provider/MediaUtil$PlaylistMap_TB;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/provider/MediaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlaylistMap_TB"
.end annotation


# instance fields
.field public _id:I

.field public audio_id:I

.field public play_order:Ljava/lang/String;

.field public playlist_id:I

.field final synthetic this$0:Lcom/oppo/music/provider/MediaUtil;


# direct methods
.method public constructor <init>(Lcom/oppo/music/provider/MediaUtil;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/oppo/music/provider/MediaUtil$PlaylistMap_TB;->this$0:Lcom/oppo/music/provider/MediaUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public constructor <init>(Lcom/oppo/music/provider/MediaUtil;IIILjava/lang/String;)V
    .locals 0
    .param p2, "_id"    # I
    .param p3, "audio_id"    # I
    .param p4, "playlist_id"    # I
    .param p5, "play_order"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/oppo/music/provider/MediaUtil$PlaylistMap_TB;->this$0:Lcom/oppo/music/provider/MediaUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p2, p0, Lcom/oppo/music/provider/MediaUtil$PlaylistMap_TB;->_id:I

    .line 131
    iput p3, p0, Lcom/oppo/music/provider/MediaUtil$PlaylistMap_TB;->audio_id:I

    .line 132
    iput p4, p0, Lcom/oppo/music/provider/MediaUtil$PlaylistMap_TB;->playlist_id:I

    .line 133
    iput-object p5, p0, Lcom/oppo/music/provider/MediaUtil$PlaylistMap_TB;->play_order:Ljava/lang/String;

    .line 134
    return-void
.end method


# virtual methods
.method public setPlay_order(Ljava/lang/String;)V
    .locals 0
    .param p1, "play_order"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/oppo/music/provider/MediaUtil$PlaylistMap_TB;->play_order:Ljava/lang/String;

    .line 137
    return-void
.end method
