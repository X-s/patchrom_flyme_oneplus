.class final Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;
.super Ljava/lang/Object;
.source "MediaListManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/media/MediaListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NewMediaInfo"
.end annotation


# instance fields
.field public final filePath:Ljava/lang/String;

.field public final time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;->filePath:Ljava/lang/String;

    .line 94
    iput-wide p2, p0, Lcom/oneplus/camera/media/MediaListManager$NewMediaInfo;->time:J

    .line 91
    return-void
.end method
