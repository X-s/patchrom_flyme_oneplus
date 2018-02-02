.class public Lcom/oneplus/base/component/ComponentEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "ComponentEventArgs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TComponent::",
        "Lcom/oneplus/base/component/Component;",
        ">",
        "Lcom/oneplus/base/EventArgs;"
    }
.end annotation


# instance fields
.field private final m_Component:Lcom/oneplus/base/component/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTComponent;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTComponent;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/oneplus/base/component/ComponentEventArgs;, "Lcom/oneplus/base/component/ComponentEventArgs<TTComponent;>;"
    .local p1, "component":Lcom/oneplus/base/component/Component;, "TTComponent;"
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/oneplus/base/component/ComponentEventArgs;->m_Component:Lcom/oneplus/base/component/Component;

    .line 19
    return-void
.end method


# virtual methods
.method public getComponent()Lcom/oneplus/base/component/Component;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTComponent;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/oneplus/base/component/ComponentEventArgs;, "Lcom/oneplus/base/component/ComponentEventArgs<TTComponent;>;"
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentEventArgs;->m_Component:Lcom/oneplus/base/component/Component;

    return-object v0
.end method
