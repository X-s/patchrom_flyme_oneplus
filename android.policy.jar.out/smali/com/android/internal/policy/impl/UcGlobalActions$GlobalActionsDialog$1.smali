.class Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog$1;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;)V
    .locals 0

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog$1;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog$1;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->dismiss()V

    .line 1315
    return-void
.end method
