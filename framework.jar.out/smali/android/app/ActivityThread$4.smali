.class Landroid/app/ActivityThread$4;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread;->sendOPInsightLog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5514
    iput-object p1, p0, Landroid/app/ActivityThread$4;->this$0:Landroid/app/ActivityThread;

    iput-object p2, p0, Landroid/app/ActivityThread$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Landroid/app/ActivityThread$4;->val$event:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5517
    new-instance v0, Lnet/oneplus/odm/insight/tracker/AppTracker;

    iget-object v1, p0, Landroid/app/ActivityThread$4;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    .line 5518
    .local v0, "mOATracker":Lnet/oneplus/odm/insight/tracker/AppTracker;
    iget-object v1, p0, Landroid/app/ActivityThread$4;->val$event:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 5519
    return-void
.end method
