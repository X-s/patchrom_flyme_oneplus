.class public interface abstract Lcom/oneplus/tuner/database/OnePlusDbHelper$DownloadConfigIdTableColumns;
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
    name = "DownloadConfigIdTableColumns"
.end annotation


# static fields
.field public static final CONFIG_ID:Ljava/lang/String; = "_config_id"

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_config_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/tuner/database/OnePlusDbHelper$DownloadConfigIdTableColumns;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
