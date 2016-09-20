.class public interface abstract Lcom/oneplus/base/component/ComponentBuilder;
.super Ljava/lang/Object;
.source "ComponentBuilder.java"


# virtual methods
.method public varargs abstract create([Ljava/lang/Object;)Lcom/oneplus/base/component/Component;
.end method

.method public abstract getPriority()Lcom/oneplus/base/component/ComponentCreationPriority;
.end method

.method public abstract isComponentTypeSupported(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method
