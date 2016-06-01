.class public interface abstract Lcom/oneplus/tuner/database/OnePlusDbHelper$RecentlyUsedConfigTableColumns;
.super Ljava/lang/Object;
.source "OnePlusDbHelper.java"

# interfaces
.implements Landroid/provider/SyncStateContract$Columns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/database/OnePlusDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecentlyUsedConfigTableColumns"
.end annotation


# static fields
.field public static final CATEGORY_ID:Ljava/lang/String; = "_category_id"

.field public static final COMMEND:Ljava/lang/String; = "_commend"

.field public static final COMMENT:Ljava/lang/String; = "_comment"

.field public static final CONFIG_ID:Ljava/lang/String; = "_config_id"

.field public static final DOWNLOAD_NUM:Ljava/lang/String; = "_download_num"

.field public static final LOCAL:Ljava/lang/String; = "_local"

.field public static final LastUsed:Ljava/lang/String; = "_lastUsedTime"

.field public static final MODEL:Ljava/lang/String; = "_model"

.field public static final PARAMS:Ljava/lang/String; = "_params"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final STYLE:Ljava/lang/String; = "_style"

.field public static final TIME:Ljava/lang/String; = "_time"

.field public static final USERNAME:Ljava/lang/String; = "_user_name"

.field public static final USING:Ljava/lang/String; = "_using"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 153
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_config_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_style"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_model"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_user_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_comment"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_commend"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_using"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_local"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_params"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_category_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_download_num"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/tuner/database/OnePlusDbHelper$RecentlyUsedConfigTableColumns;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
