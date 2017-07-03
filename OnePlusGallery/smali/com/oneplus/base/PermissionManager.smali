.class public interface abstract Lcom/oneplus/base/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final EVENT_PERMISSION_DENIED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/PermissionEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_PERMISSION_GRANTED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/PermissionEventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 10
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "PermissionGranted"

    const-class v2, Lcom/oneplus/base/PermissionEventArgs;

    const-class v3, Lcom/oneplus/base/PermissionManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_GRANTED:Lcom/oneplus/base/EventKey;

    .line 14
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "PermissionGranted"

    const-class v2, Lcom/oneplus/base/PermissionEventArgs;

    const-class v3, Lcom/oneplus/base/PermissionManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/base/PermissionManager;->EVENT_PERMISSION_DENIED:Lcom/oneplus/base/EventKey;

    return-void
.end method


# virtual methods
.method public abstract checkPermission(Ljava/lang/String;)Z
.end method

.method public abstract requestPermissions(Lcom/oneplus/base/BaseActivity;[Ljava/lang/String;I)V
.end method
