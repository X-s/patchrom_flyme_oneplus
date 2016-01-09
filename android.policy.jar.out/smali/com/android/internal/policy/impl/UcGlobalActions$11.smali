.class Lcom/android/internal/policy/impl/UcGlobalActions$11;
.super Landroid/database/ContentObserver;
.source "UcGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UcGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$11;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$11;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/UcGlobalActions;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$1800(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    .line 1194
    return-void
.end method
