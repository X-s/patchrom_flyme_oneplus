.class public final Lcom/oneplus/camera/ui/menu/AboutMenuItem;
.super Lcom/oneplus/camera/ui/menu/MenuItem;
.source "AboutMenuItem.java"


# instance fields
.field private final m_Context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oneplus/camera/ui/menu/MenuItem;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/oneplus/camera/ui/menu/AboutMenuItem;->m_Context:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public showAboutActivity(Lcom/oneplus/camera/StartMode;)V
    .locals 3
    .param p1, "startMode"    # Lcom/oneplus/camera/StartMode;

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/AboutMenuItem;->m_Context:Landroid/content/Context;

    const-class v2, Lcom/oneplus/camera/AboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "StartMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 32
    iget-object v1, p0, Lcom/oneplus/camera/ui/menu/AboutMenuItem;->m_Context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method
