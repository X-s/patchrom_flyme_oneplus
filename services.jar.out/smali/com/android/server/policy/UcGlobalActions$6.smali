.class Lcom/android/server/policy/UcGlobalActions$6;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/UcGlobalActions;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/UcGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/UcGlobalActions;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/server/policy/UcGlobalActions$6;->this$0:Lcom/android/server/policy/UcGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 339
    return-void
.end method

.method public onScrollToExit()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$6;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # invokes: Lcom/android/server/policy/UcGlobalActions;->detach()V
    invoke-static {v0}, Lcom/android/server/policy/UcGlobalActions;->access$100(Lcom/android/server/policy/UcGlobalActions;)V

    .line 345
    return-void
.end method

.method public onScrollToShutdown()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method
