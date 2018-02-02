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
    .line 20
    invoke-direct {p0}, Lcom/oneplus/camera/ui/menu/MenuItem;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oneplus/camera/ui/menu/AboutMenuItem;->m_Context:Landroid/content/Context;

    .line 20
    return-void
.end method
