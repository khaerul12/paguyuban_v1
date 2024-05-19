<?php

namespace App\Filament\Resources\ActivityResource\Pages;

use App\Filament\Resources\ActivityResource;
use Filament\Actions\Action;
use Filament\Resources\Pages\CreateRecord;

class CreateActivity extends CreateRecord
{
    protected static string $resource = ActivityResource::class;

    protected function getCreateFormAction(): Action
    {
        return parent::getCreateFormAction()
            ->color('success')
            ->label('Simpan')
            ->icon('heroicon-o-check'); // TODO: Change the autogenerated stub
    }

    protected function getCancelFormAction(): Action
    {
        return parent::getCancelFormAction()
            ->label('Kembali'); // TODO: Change the autogenerated stub
    }

    protected function getCreateAnotherFormAction(): Action
    {
        return parent::getCreateAnotherFormAction()->hidden(); // TODO: Change the autogenerated stub
    }

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
