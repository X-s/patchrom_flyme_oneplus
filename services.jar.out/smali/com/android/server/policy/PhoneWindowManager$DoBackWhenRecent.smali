.class Lcom/android/server/policy/PhoneWindowManager$DoBackWhenRecent;
.super Ljava/lang/Thread;
.source "PhoneWindowManager.java"

# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->doBackWhenRecent(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 8508
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DoBackWhenRecent;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 8511
    :try_start_0
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    .line 8512
    .local v1, "instrumentation":Landroid/app/Instrumentation;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8513
    return-void

    .line 8514
    .end local v1    # "instrumentation":Landroid/app/Instrumentation;
    :catch_0
    move-exception v0

    .line 8509
    .local v0, "e":Ljava/lang/Exception;
    return-void
.end method
