.class Lcom/android/internal/policy/impl/UcGlobalActions$16;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/UcPowerViewContainer$OnAttachedToWindowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;->initViewEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UcGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 0

    .prologue
    .line 1760
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$16;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAttachedToWindowBack()V
    .locals 2

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$16;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->isInAnimation:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$4100(Lcom/android/internal/policy/impl/UcGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1764
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$16;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/impl/UcGlobalActions;->isInAnimation:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$4102(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z

    .line 1765
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$16;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/UcGlobalActions;->showViewByAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$4200(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    .line 1767
    :cond_0
    return-void
.end method
