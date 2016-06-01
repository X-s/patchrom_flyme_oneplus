.class public final Lcom/oppo/music/provider/MediaUtil$PlaylistMap$PlaylistMapColumns;
.super Ljava/lang/Object;
.source "MediaUtil.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/provider/MediaUtil$PlaylistMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlaylistMapColumns"
.end annotation


# static fields
.field public static final AUDIO_ID:Ljava/lang/String; = "audio_id"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "created DESC"

.field public static final PLAYLIST_ID:Ljava/lang/String; = "playlist_id"

.field public static final PLAY_ORDER:Ljava/lang/String; = "play_order"

.field public static final _ID:Ljava/lang/String; = "_id"


# instance fields
.field final synthetic this$0:Lcom/oppo/music/provider/MediaUtil$PlaylistMap;


# direct methods
.method public constructor <init>(Lcom/oppo/music/provider/MediaUtil$PlaylistMap;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oppo/music/provider/MediaUtil$PlaylistMap$PlaylistMapColumns;->this$0:Lcom/oppo/music/provider/MediaUtil$PlaylistMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
