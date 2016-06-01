.class public Lcom/oppo/tribune/provider/forum/Forum2$PostTable;
.super Ljava/lang/Object;
.source "Forum2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/provider/forum/Forum2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostTable"
.end annotation


# static fields
.field public static final MODULE_ID:Ljava/lang/String; = "fid"

.field public static final REPLY_COUNT:Ljava/lang/String; = "replies"

.field public static final TOPIC_ID:Ljava/lang/String; = "tid"

.field public static final TYPE_ID:Ljava/lang/String; = "typeid"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
