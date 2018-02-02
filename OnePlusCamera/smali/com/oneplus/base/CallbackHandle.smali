.class public abstract Lcom/oneplus/base/CallbackHandle;
.super Lcom/oneplus/base/Handle;
.source "CallbackHandle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TCallback:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/base/Handle;"
    }
.end annotation


# instance fields
.field private final m_Callback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTCallback;"
        }
    .end annotation
.end field

.field private final m_Handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TTCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<TTCallback;>;"
    .local p2, "callback":Ljava/lang/Object;, "TTCallback;"
    invoke-direct {p0, p1}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p2, p0, Lcom/oneplus/base/CallbackHandle;->m_Callback:Ljava/lang/Object;

    .line 25
    iput-object p3, p0, Lcom/oneplus/base/CallbackHandle;->m_Handler:Landroid/os/Handler;

    .line 21
    return-void
.end method


# virtual methods
.method public final getCallback()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTCallback;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<TTCallback;>;"
    iget-object v0, p0, Lcom/oneplus/base/CallbackHandle;->m_Callback:Ljava/lang/Object;

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<TTCallback;>;"
    iget-object v0, p0, Lcom/oneplus/base/CallbackHandle;->m_Handler:Landroid/os/Handler;

    return-object v0
.end method
