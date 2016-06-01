.class public interface abstract Lcom/oneplus/tuner/providers/Tables$WebCache;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Landroid/provider/SyncStateContract$Columns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/providers/Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebCache"
.end annotation


# static fields
.field public static final COMMEND:Ljava/lang/String; = "_commend"

.field public static final COMMENT:Ljava/lang/String; = "_comment"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXPLANATION:Ljava/lang/String; = "_explanation"

.field public static final MODEL:Ljava/lang/String; = "_model"

.field public static final SETTING:Ljava/lang/String; = "_setting"

.field public static final TABLE_NAME:Ljava/lang/String; = "webCache"

.field public static final TIME:Ljava/lang/String; = "_time"

.field public static final USERNAME:Ljava/lang/String; = "_user_name"

.field public static final WEBCACHE_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/webCache"

.field public static final WEBCACHE_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/webCache"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "content://com.oneplus.tuner.providers.soundeffect/webCache"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/tuner/providers/Tables$WebCache;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
