.class public interface abstract Lcom/oneplus/tuner/providers/Tables$SearchHistory;
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
    name = "SearchHistory"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COUNT:Ljava/lang/String; = "_count"

.field public static final HISTORY_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/searchHistory"

.field public static final HISTORY_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/searchHistory"

.field public static final KEYWORD:Ljava/lang/String; = "_keyword"

.field public static final LASTTIME:Ljava/lang/String; = "_lasttime"

.field public static final TABLE_NAME:Ljava/lang/String; = "searchHistory"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "content://com.oneplus.tuner.providers.soundeffect/searchHistory"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/tuner/providers/Tables$SearchHistory;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
