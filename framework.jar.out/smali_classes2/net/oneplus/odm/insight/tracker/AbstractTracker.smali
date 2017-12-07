.class public abstract Lnet/oneplus/odm/insight/tracker/AbstractTracker;
.super Ljava/lang/Object;
.source "AbstractTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_MESSAGE:Ljava/lang/String; = "message"

.field public static final EVENT_CRASH:Ljava/lang/String; = "crash"

.field public static final EVENT_END_SESSION:Ljava/lang/String; = "stop"

.field public static final EVENT_NOT_RESPOND:Ljava/lang/String; = "anr"

.field public static final EVENT_REBOOT:Ljava/lang/String; = "reboot"

.field public static final EVENT_SCREEN_OFF:Ljava/lang/String; = "screen_off"

.field public static final EVENT_SCREEN_ON:Ljava/lang/String; = "screen_on"

.field public static final EVENT_START_SESSION:Ljava/lang/String; = "start"

.field public static final EVENT_UNLOCK:Ljava/lang/String; = "unlock"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field private mTrackerAsyncQueryHandler:Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lnet/oneplus/odm/insight/tracker/AbstractTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->TAG:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "content://net.oneplus.odm.provider.PayloadProvider/OP_payload_upload_table"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->CONTENT_URI:Landroid/net/Uri;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->mContext:Landroid/content/Context;

    .line 61
    :try_start_0
    new-instance v1, Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;-><init>(Lnet/oneplus/odm/insight/tracker/AbstractTracker;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->mTrackerAsyncQueryHandler:Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected insertValues(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 75
    :try_start_0
    iget-object v2, p0, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->mTrackerAsyncQueryHandler:Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;

    sget-object v3, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3, p1}, Landroid/content/AsyncQueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v2, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mTrackerAsyncQueryHandler is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Content URI is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "(is OPDeviceManager not installed)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
