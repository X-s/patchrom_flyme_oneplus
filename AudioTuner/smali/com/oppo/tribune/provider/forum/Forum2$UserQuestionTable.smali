.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$UserQuestionTable;
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
    name = "UserQuestionTable"
.end annotation


# static fields
.field public static final ANDROID_SUBJECT:Ljava/lang/String; = "android_subject"

.field public static final ANDROID_SUMMARY:Ljava/lang/String; = "android_summary"

.field public static final ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final AUTHOR:Ljava/lang/String; = "author"

.field public static final AUTHOR_ID:Ljava/lang/String; = "authorid"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATELINE:Ljava/lang/String; = "dateline"

.field public static final DISPLAY_ORDER:Ljava/lang/String; = "displayorder"

.field public static final FID:Ljava/lang/String; = "fid"

.field public static final FORUMNAME:Ljava/lang/String; = "forumname"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final INVISIBLE:Ljava/lang/String; = "invisible"

.field public static final LASTPOST:Ljava/lang/String; = "lastpost"

.field public static final LASTPOSTER:Ljava/lang/String; = "lastposter"

.field public static final NOTIFIED:Ljava/lang/String; = "has_notified"

.field public static final PAGE:Ljava/lang/String; = "page"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final REPLIES:Ljava/lang/String; = "replies"

.field public static final SORT_ORDER:Ljava/lang/String; = "page ASC, _id ASC"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final TABLE_NAME:Ljava/lang/String; = "user_question"

.field public static final TID:Ljava/lang/String; = "tid"

.field public static final TYPEID:Ljava/lang/String; = "typeid"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final VIEWS:Ljava/lang/String; = "views"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 773
    const-string v0, "user_question"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$UserQuestionTable;->CONTENT_URI:Landroid/net/Uri;

    .line 774
    const-string v0, "user_question"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$UserQuestionTable;->TYPE_DIRS:Ljava/lang/String;

    .line 775
    const-string v0, "user_question"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$UserQuestionTable;->TYPE_ITEM:Ljava/lang/String;

    .line 802
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "page"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "typeid"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "author"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "authorid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "dateline"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lastpost"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lastposter"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "views"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "replies"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "invisible"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "displayorder"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "attachment"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "forumname"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "android_subject"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "android_summary"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "has_notified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$UserQuestionTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
