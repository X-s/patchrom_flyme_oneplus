.class public Lcom/oppo/tribune/provider/TribuneData$UserTable;
.super Ljava/lang/Object;
.source "TribuneData.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/provider/TribuneData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserTable"
.end annotation


# static fields
.field public static final COLLECT_COUNT:Ljava/lang/String; = "sharingscount"

.field public static final COLUMNS:[Ljava/lang/String;

.field public static final COMMENT_COUNT:Ljava/lang/String; = "digestpostscount"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.oppo.usertable"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.oppo.usertable"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREDITS:Ljava/lang/String; = "credits"

.field public static final CURRENT_USER:Ljava/lang/String; = "currentuser"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final GROUP_TITLE:Ljava/lang/String; = "grouptitle"

.field public static final INDEX_COLLECT_COUNT:I = 0xa

.field public static final INDEX_COMMENT_COUNT:I = 0x9

.field public static final INDEX_CREDITS:I = 0x4

.field public static final INDEX_CURRENT_USER:I = 0xe

.field public static final INDEX_EMAIL:I = 0x1

.field public static final INDEX_GROUP_TITLE:I = 0xc

.field public static final INDEX_NEW_REMIND_COUNT:I = 0x5

.field public static final INDEX_ONLINE_TIME:I = 0xb

.field public static final INDEX_OUBI:I = 0xd

.field public static final INDEX_POST_COUNT:I = 0x7

.field public static final INDEX_REMIND_COUNT:I = 0x6

.field public static final INDEX_STATUS:I = 0x3

.field public static final INDEX_THREAD_COUNT:I = 0x8

.field public static final INDEX_USER_ID:I = 0x0

.field public static final INDEX_USER_NAME:I = 0x2

.field public static final NAME:Ljava/lang/String; = "usertable"

.field public static final NEW_REMIND_COUNT:Ljava/lang/String; = "newremindcount"

.field public static final ONLINE_TIME:Ljava/lang/String; = "onlinetime"

.field public static final OUBI:Ljava/lang/String; = "oubi"

.field public static final POST_COUNT:Ljava/lang/String; = "postscount"

.field public static final REMIND_COUNT:Ljava/lang/String; = "remindscount"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final THREAD_COUNT:Ljava/lang/String; = "threadscount"

.field public static final TYPES:[Ljava/lang/String;

.field public static final USER_ID:Ljava/lang/String; = "uid"

.field public static final USER_NAME:Ljava/lang/String; = "name"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.tuner.provider.data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "usertable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/TribuneData$UserTable;->CONTENT_URI:Landroid/net/Uri;

    .line 82
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "uid"

    aput-object v1, v0, v3

    const-string v1, "email"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "status"

    aput-object v1, v0, v6

    const-string v1, "credits"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "newremindcount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "remindscount"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "postscount"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "threadscount"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "digestpostscount"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sharingscount"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "onlinetime"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "grouptitle"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "oubi"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "currentuser"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/TribuneData$UserTable;->COLUMNS:[Ljava/lang/String;

    .line 99
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "INTEGER PRIMARY KEY"

    aput-object v1, v0, v3

    const-string v1, "TEXT NOT NULL"

    aput-object v1, v0, v4

    const-string v1, "TEXT NOT NULL"

    aput-object v1, v0, v5

    const-string v1, "INTEGER"

    aput-object v1, v0, v6

    const-string v1, "INTEGER"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/TribuneData$UserTable;->TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final CONTENT_URI(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.tuner.provider.data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "usertable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final SHORT_COLUMNS()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "credits"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "newremindcount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "remindscount"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "postscount"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "threadscount"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "digestpostscount"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sharingscount"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "onlinetime"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "grouptitle"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "oubi"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "currentuser"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static final SHOW_COLUMNS()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "newremindcount"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "remindscount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "postscount"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "threadscount"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "grouptitle"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "oubi"

    aput-object v2, v0, v1

    return-object v0
.end method
