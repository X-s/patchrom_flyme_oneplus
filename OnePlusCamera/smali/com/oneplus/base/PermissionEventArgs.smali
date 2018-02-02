.class public Lcom/oneplus/base/PermissionEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "PermissionEventArgs.java"


# instance fields
.field private final m_Permission:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/oneplus/base/PermissionEventArgs;->m_Permission:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oneplus/base/PermissionEventArgs;->m_Permission:Ljava/lang/String;

    return-object v0
.end method
