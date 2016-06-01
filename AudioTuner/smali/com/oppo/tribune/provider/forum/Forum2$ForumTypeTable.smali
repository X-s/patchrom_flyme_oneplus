.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$ForumTypeTable;
.super Ljava/lang/Object;
.source "Forum2.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/provider/forum/Forum2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ForumTypeTable"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FORUM_ID:Ljava/lang/String; = "forumid"

.field public static final FORUM_NAME:Ljava/lang/String; = "forumname"

.field public static final GROUP_ID:Ljava/lang/String; = "groupid"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SORT_ORDER:Ljava/lang/String; = "groupid DESC"

.field public static final SUBFORUM_ID:Ljava/lang/String; = "subforumid"

.field public static final SUBFORUM_NAME:Ljava/lang/String; = "subforumname"

.field public static final TABLE_NAME:Ljava/lang/String; = "forum_type"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    const-string v0, "forum_type"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$ForumTypeTable;->CONTENT_URI:Landroid/net/Uri;

    .line 93
    const-string v0, "forum_type"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$ForumTypeTable;->TYPE_DIRS:Ljava/lang/String;

    .line 94
    const-string v0, "forum_type"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$ForumTypeTable;->TYPE_ITEM:Ljava/lang/String;

    .line 105
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "groupid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "forumid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "forumname"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "subforumid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "subforumname"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$ForumTypeTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
