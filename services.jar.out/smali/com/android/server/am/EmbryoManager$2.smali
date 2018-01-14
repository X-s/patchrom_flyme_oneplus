.class Lcom/android/server/am/EmbryoManager$2;
.super Ljava/lang/Object;
.source "EmbryoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/EmbryoManager;->scheduleAttach(Landroid/app/IApplicationThread;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/EmbryoManager;

.field final synthetic val$pid:I

.field final synthetic val$thread:Landroid/app/IApplicationThread;


# direct methods
.method constructor <init>(Lcom/android/server/am/EmbryoManager;Landroid/app/IApplicationThread;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/EmbryoManager;
    .param p2, "val$thread"    # Landroid/app/IApplicationThread;
    .param p3, "val$pid"    # I

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/server/am/EmbryoManager$2;->this$0:Lcom/android/server/am/EmbryoManager;

    iput-object p2, p0, Lcom/android/server/am/EmbryoManager$2;->val$thread:Landroid/app/IApplicationThread;

    iput p3, p0, Lcom/android/server/am/EmbryoManager$2;->val$pid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 328
    invoke-static {}, Lcom/android/server/am/EmbryoManager;->-get5()Lcom/android/server/am/EmbryoHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/EmbryoManager$2;->val$thread:Landroid/app/IApplicationThread;

    iget v2, p0, Lcom/android/server/am/EmbryoManager$2;->val$pid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/EmbryoHelper;->attachApplicationLocked(Landroid/app/IApplicationThread;I)Z

    .line 326
    return-void
.end method
