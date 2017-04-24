.class Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AbstractTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/odm/insight/tracker/AbstractTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackerAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler$ExceptionHandler;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/odm/insight/tracker/AbstractTracker;


# direct methods
.method public constructor <init>(Lnet/oneplus/odm/insight/tracker/AbstractTracker;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 107
    iput-object p1, p0, Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;->this$0:Lnet/oneplus/odm/insight/tracker/AbstractTracker;

    .line 108
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 109
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 104
    new-instance v0, Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler$ExceptionHandler;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler$ExceptionHandler;-><init>(Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    .line 119
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    .line 113
    # getter for: Lnet/oneplus/odm/insight/tracker/AbstractTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Event success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method
