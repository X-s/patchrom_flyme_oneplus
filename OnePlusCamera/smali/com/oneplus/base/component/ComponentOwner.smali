.class public interface abstract Lcom/oneplus/base/component/ComponentOwner;
.super Ljava/lang/Object;
.source "ComponentOwner.java"

# interfaces
.implements Lcom/oneplus/base/BaseObject;
.implements Lcom/oneplus/base/HandlerObject;


# static fields
.field public static final EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/component/ComponentEventArgs",
            "<",
            "Lcom/oneplus/base/component/Component;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/component/ComponentEventArgs",
            "<",
            "Lcom/oneplus/base/component/Component;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "ComponentAdded"

    const-class v2, Lcom/oneplus/base/component/ComponentEventArgs;

    const-class v3, Lcom/oneplus/base/component/ComponentOwner;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/base/component/ComponentOwner;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    .line 21
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "ComponentRemoved"

    const-class v2, Lcom/oneplus/base/component/ComponentEventArgs;

    const-class v3, Lcom/oneplus/base/component/ComponentOwner;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/base/component/ComponentOwner;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    .line 10
    return-void
.end method


# virtual methods
.method public abstract findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TComponent::",
            "Lcom/oneplus/base/component/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TTComponent;>;)TTComponent;"
        }
    .end annotation
.end method

.method public abstract findComponents(Ljava/lang/Class;)[Lcom/oneplus/base/component/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TComponent::",
            "Lcom/oneplus/base/component/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TTComponent;>;)[TTComponent;"
        }
    .end annotation
.end method

.method public abstract removeComponent(Lcom/oneplus/base/component/Component;)V
.end method
