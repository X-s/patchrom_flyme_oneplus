.class public interface abstract Lcom/oneplus/tuner/database/OnePlusDbHelper$UserCollectionTableColumns;
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
    name = "UserCollectionTableColumns"
.end annotation


# static fields
.field public static final CONFIG_ID:Ljava/lang/String; = "_config_id"

.field public static final IS_DIRTY:Ljava/lang/String; = "_is_dirty"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final STATUS:Ljava/lang/String; = "_status"

.field public static final UPDATE_TIME:Ljava/lang/String; = "_update_time"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 111
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_config_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_status"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_is_dirty"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_update_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/tuner/database/OnePlusDbHelper$UserCollectionTableColumns;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
