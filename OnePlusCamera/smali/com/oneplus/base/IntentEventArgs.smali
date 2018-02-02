.class public Lcom/oneplus/base/IntentEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "IntentEventArgs.java"


# instance fields
.field private final m_Intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oneplus/base/IntentEventArgs;->m_Intent:Landroid/content/Intent;

    .line 20
    return-void
.end method


# virtual methods
.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oneplus/base/IntentEventArgs;->m_Intent:Landroid/content/Intent;

    return-object v0
.end method
