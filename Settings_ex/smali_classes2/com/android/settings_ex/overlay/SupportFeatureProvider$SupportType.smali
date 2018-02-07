.class public interface abstract annotation Lcom/android/settings_ex/overlay/SupportFeatureProvider$SupportType;
.super Ljava/lang/Object;
.source "SupportFeatureProvider.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/annotation/IntDef;
    value = {
        0x1L,
        0x2L,
        0x3L
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/overlay/SupportFeatureProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "SupportType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CHAT:I = 0x3

.field public static final EMAIL:I = 0x1

.field public static final PHONE:I = 0x2
