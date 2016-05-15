.class Lcom/android/internal/policy/impl/UcGlobalActions$18;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/UcPowerViewContainer$OnBackListener;


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
    .line 1776
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$18;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnBack()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1780
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$18;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/UcGlobalActions;->isShown:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$4302(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z

    .line 1781
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$18;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$4402(Lcom/android/internal/policy/impl/UcGlobalActions;Lcom/android/internal/policy/impl/UcPowerViewContainer;)Lcom/android/internal/policy/impl/UcPowerViewContainer;

    .line 1782
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$18;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/UcGlobalActions;->isInAnimation:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$4102(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z

    .line 1783
    return-void
.end method
